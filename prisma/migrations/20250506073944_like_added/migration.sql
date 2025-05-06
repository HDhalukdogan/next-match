-- CreateTable
CREATE TABLE "Like" (
    "sourceUserId" TEXT NOT NULL,
    "targetUserId" TEXT NOT NULL,

    PRIMARY KEY ("sourceUserId", "targetUserId"),
    CONSTRAINT "Like_sourceUserId_fkey" FOREIGN KEY ("sourceUserId") REFERENCES "Member" ("userId") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "Like_targetUserId_fkey" FOREIGN KEY ("targetUserId") REFERENCES "Member" ("userId") ON DELETE CASCADE ON UPDATE CASCADE
);
