// Deadlock Detection algorithm
#include <stdio.h>
int main()
{

	int n, m, i, j, k, p, flag;

	printf("\nEnter the number of processes : ");
	scanf("%d",&n);
	printf("Enter the number of resources : ");
        scanf("%d",&m);

	int alloc[100][100],request[100][100],avail[100],need[100][100];
        int finish[100],work[100], ans[n], ind = 0;


	//reading allocation matrix
	printf("\nEnter the Allocation matrix : \n");
	for(i=0;i<n;i++)
	{
		printf("Process P%d : ",i);
		for(j=0;j<m;j++)
			scanf("%d",&alloc[i][j]);
	}

	//reading request matrix
        printf("\nEnter the request matrix : \n");
        for(i=0;i<n;i++)
        {
                printf("Process P%d : ",i);
                for(j=0;j<m;j++)
                        scanf("%d",&request[i][j]);
        }

	printf("\nEnter the available number of each resources : \n");

	for(j=0;j<m;j++)
		scanf("%d",&avail[j]);

        for(j=0;j<m;j++)
                work[j]=avail[j];

	//initialising finish vector 
	for(i=0;i<n;i++)
	{
		flag=0;
		for(j=0;j<m;j++)
			if(alloc[i][j]>0)
				flag=1;
		if(flag)
			finish[i]=0;
		else
			finish[i]=1;
	}


	for (p = 0; p < n; p++)
	{
		for (i = 0; i < n; i++)
		{
			if (finish[i] == 0)
			{

				flag = 1;
				for (j = 0; j < m; j++)
				{
					if (request[i][j] > work[j])
					{
						flag = 0;
						break;
					}
				}
				if (flag)
				{
					for (k = 0; k < m; k++)
						work[k] += alloc[i][k];
					finish[i] = 1;
				}
			}
		}
	}

	flag=0;
	for(i=0;i<n;i++)
	{
		if(finish[i]==0)
		{
			if(!flag)
			{
				printf("\nThe system is in a deadlocked state..");
				printf("\nDeadlocked processes are : \n");
				flag=1;
			}
			printf("P%d, ",i);
		}
	}
	if(!flag)
		printf("\nThere is no deadlock..\n");
	printf("\n");

	return (0);
}
