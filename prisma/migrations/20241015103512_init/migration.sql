-- CreateTable
CREATE TABLE `Letter` (
    `id` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `content` VARCHAR(191) NOT NULL,
    `ip` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `LetterResponse` (
    `id` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `content` VARCHAR(191) NOT NULL,
    `letterId` VARCHAR(191) NOT NULL,
    `public` BOOLEAN NOT NULL DEFAULT false,
    `ip` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `LetterSignature` (
    `id` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `content` VARCHAR(191) NOT NULL,
    `letterId` VARCHAR(191) NOT NULL,
    `ip` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `LetterReport` (
    `id` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `reason` VARCHAR(191) NOT NULL,
    `letterId` VARCHAR(191) NOT NULL,
    `ip` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `LetterResponse` ADD CONSTRAINT `LetterResponse_letterId_fkey` FOREIGN KEY (`letterId`) REFERENCES `Letter`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `LetterSignature` ADD CONSTRAINT `LetterSignature_letterId_fkey` FOREIGN KEY (`letterId`) REFERENCES `Letter`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `LetterReport` ADD CONSTRAINT `LetterReport_letterId_fkey` FOREIGN KEY (`letterId`) REFERENCES `Letter`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
