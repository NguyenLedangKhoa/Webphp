<?php

class UserTest extends PHPUnit\Framework\TestCase
{
    public function testThatWeCanGetTheFirstName()
    {
        $user = new \App\Models\User;

        $user->setFirstName('Khoa');

        $this->assertEquals($user->getFirstName(), 'Khoa');
    }


    public function testThatWeCanGetTheLastName()
    {
        $user = new \App\Models\User;

        $user->setLastName('Dang');

        $this->assertEquals($user->getLastName(), 'Dang');
    }


    public function testThatWeCanGetTheFullName()
    {
        $user = new \App\Models\User;

        $user->setFirstName('Khoa');

        $user->setLastName('Dang');

        $this->assertEquals($user->getFullName(), 'Dang Khoa');
    }

    public function testFirstAndLastNameAreTrimmed()
    {
        $user = new \App\Models\User;

        $user->setFirstName('Khoa');

        $user->setLastName('Dang   ');

        $this->assertEquals($user->getLastName(), 'Dang');
        $this->assertEquals($user->getFirstName(), 'Khoa');
    }
    public function testEmailAddressCanBeSet()
    {
        $user = new \App\Models\User;

        $user->setEmail('Khoadanglenguyen3012@gmail.com');

        $this->assertEquals($user->getEmail(), 'Khoadanglenguyen3012@gmail.com');
       
    }

    public function testEmailVariablesContainCorrectValues()
    {
        $user = new \App\Models\User;

        $user->setFirstName('Khoa');

        $user->setLastName('Dang   ');

        $user->setEmail('Khoadanglenguyen3012@gmail.com');

        $emailVariables = $user->getEmailVariables();

        $this->assertArrayHasKey('full_name',$emailVariables);
        $this->assertArrayHasKey('email',$emailVariables);

        $this->assertEquals($emailVariables['full_name'],'Dang Khoa');
        $this->assertEquals($emailVariables['email'],'Khoadanglenguyen3012@gmail.com');
    }
    }
    