// Banker's Algorithm
#include <stdio.h>
int main()
{

	int n, m, i, j, k, p;

	printf("\nEnter the number of processes : ");
	scanf("%d",&n);
	printf("Enter the number of resources : ");
        scanf("%d",&m);

	int alloc[100][100],max[100][100],avail[100],need[100][100];
        int finish[100],work[100], ans[n], ind = 0;


	//reading allocation matrix
	printf("\nEnter the Allocation matrix : \n");
	for(i=0;i<n;i++)
	{
		printf("Process P%d : ",i);
		for(j=0;j<m;j++)
			scanf("%d",&alloc[i][j]);
	}

	//reading Max matrix
        printf("\nEnter the Max matrix : \n");
        for(i=0;i<n;i++)
        {
                printf("Process P%d : ",i);
                for(j=0;j<m;j++)
                        scanf("%d",&max[i][j]);
        }

	printf("\nEnter the available number of each resources : \n");

	for(j=0;j<m;j++)
		scanf("%d",&avail[j]);

        for(j=0;j<m;j++)
                work[j]=avail[j];

	//initialising finish vector with false
	for (k = 0; k < n; k++)
	{
		finish[k] = 0;
	}

	//initialising need matrix
	for (i = 0; i < n; i++)
	{
		for (j = 0; j < m; j++)
			need[i][j] = max[i][j] - alloc[i][j];
	}

	for (p = 0; p < n; p++)
	{
		for (i = 0; i < n; i++)
		{
			if (finish[i] == 0)
			{

				int flag = 0;
				for (j = 0; j < m; j++)
				{
					if (need[i][j] > work[j])
					{
						flag = 1;
						break;
					}
				}
				if (flag == 0)
				{
					ans[ind++] = i;
					for (k = 0; k < m; k++)
						work[k] += alloc[i][k];
					finish[i] = 1;
				}
			}
		}
	}
	if(ind==n)
	{
		printf("\nSystem is in safe state\nFollowing is the SAFE Sequence\n");
		for (i = 0; i < n - 1; i++)
			printf(" P%d ->", ans[i]);
		printf(" P%d\n\n", ans[n - 1]);
	}
	else
		printf("system is in unsafe state...\n");

	return (0);
}
