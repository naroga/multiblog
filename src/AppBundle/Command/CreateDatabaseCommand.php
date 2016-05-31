<?php

namespace AppBundle\Command;

use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

/**
 * Class CreateDatabaseCommand
 * @package AppBundle\Command
 */
class CreateDatabaseCommand extends ContainerAwareCommand
{
    /**
     * @inheritDoc
     */
    protected function configure()
    {
        $this
            ->setName('multiblog:create-database')
            ->setDescription('Creates the application database, if not created.');
    }

    /**
     * @inheritDoc
     */
    protected function execute(InputInterface $input, OutputInterface $output)
    {
        /** @var \Doctrine\DBAL\Connection $connection */
        $connection = $this
            ->getContainer()
            ->get('doctrine.dbal.default_connection');

        $database = $this
            ->getContainer()
            ->getParameter('database_name');

        $connection->executeQuery('CREATE DATABASE IF NOT EXISTS ' . $database);
    }
}
