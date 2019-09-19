Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C86FB75B6
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 11:09:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2AEDF868B2;
	Thu, 19 Sep 2019 09:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FHz7AYX5B+S2; Thu, 19 Sep 2019 09:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9C7886812;
	Thu, 19 Sep 2019 09:09:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF7011BF5F4
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D5FCD87D9C
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fPeWGvE3beL0 for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 09:09:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rajiweb.com (mta147.atlashoster.net [5.39.37.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D57E487CCB
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 09:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=noudeu.com; 
 s=default; h=Message-ID:Reply-To:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YfW+noOdClC1aGko2lS9prxVDV6euJq9AOVQNpC+QTY=; b=mJRSUv7HC2HvOr2lmGzSVFmdm4
 qxj4oJq3tc/hvxg0Fo++c4RomhGWIoU4D6S06O6MmKYtWYn5PD0sE+HN9RAi3ly2ZPSxlUn/Qes3F
 VsPTBkxUfBf6R1BY7pUo8Nw7LT/XMkqSCHNGdzdOCyPc2ChArHkCgeSOhWVFwulLkTkR/rFjPKKxp
 jmRchVFpoIyHW6V/eYd05jD8lgc4YrBol/94PBR3bjdPFEPlKJnqxhXcR5uU/0gqoqMJNQZFQjSv0
 z0D+O3RFNWOVseMYMfNujl81zlmndHEgE4K0VRcF+6FeYxl//HjrGueLtALS73Fe7uTXgGjDPSvtG
 Qwo7lCsw==;
Received: from [::1] (port=49554 helo=hosting.atlashoster.net)
 by hosting.atlashoster.net with esmtpa (Exim 4.92)
 (envelope-from <mrandrewkabore@yandex.com>)
 id 1iAsQf-0003nZ-UY; Thu, 19 Sep 2019 11:08:45 +0200
MIME-Version: 1.0
Date: Thu, 19 Sep 2019 11:08:45 +0200
From: Mr Andrew Kabore <mrandrewkabore@yandex.com>
To: undisclosed-recipients:;
Subject: dear friend
Mail-Reply-To: andrewkabore1@gmail.com
Message-ID: <68e89784bfa416573ab6c636f24130d9@yandex.com>
X-Sender: mrandrewkabore@yandex.com
User-Agent: Roundcube Webmail/1.3.8
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.atlashoster.net
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - yandex.com
X-Get-Message-Sender-Via: hosting.atlashoster.net: authenticated_id:
 contact@noudeu.com
X-Authenticated-Sender: hosting.atlashoster.net: contact@noudeu.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: andrewkabore1@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



-- 
Dear Friend,

With due respect to your person and much sincerity of purpose, I make
this contact with you as I believe that you can be of great assistance
to me. My name is Mr Andrew Kabore, from Ouagadougou Republic of BURKINA
FASO, West Africa . Presently i work in the African development Bank as
telex manager. I have been searching for your contact since you left our
country some years ago.

I do not know whether this is your correct email address or not because
I only used your name initials to search for your contact .In case you
are not the person I am supposed to contact, please see this as a
confidential message and do not reveal it to another person but if you
are not the intended receiver, do let me know whether you can be of
assistance regarding my proposal below because it is top secret.

I am about to retire from active Bank service to start a new life but I
am sceptical to reveal this particular secret to a stranger. You must
assure me that everything will be handled confidentially because we are
not going to suffer again in life.

It has been 10 years now that most of the greedy African Politicians
used our bank to launder money overseas through the help of their
Political advisers. Most of the funds which they transferred out of the
shores of Africa were gold and oil money that was supposed to have been
used to develop the continent. Their Political advisers always inflated
the amounts before transfer to foreign accounts so I also used the
opportunity to divert part of the funds hence I am aware that there is
no official trace of how much was transferred as all the accounts used
for such transfers were being closed after transfer.

I acted as the Bank Officer to most of the politicians and when I
discovered that they were using me to succeed in their greedy act; I
also cleaned some of their banking records from the Bank files and no
one cared to ask me because the money was too much for them to control.
They laundered over $5b Dollars during the process .As I am sending this
message to you, I was able to divert thirty five million united state
dollars ($35m) to an escrow account belonging to no one in the bank. The
bank is anxious now to know who the beneficiary to the funds is because
they have made a lot of profits with the funds.

It is more than Eight years now and most of the politicians are no
longer using our bank to transfer funds overseas. The ($35) Million
Dollars has been laying waste but I don't want to retire from the bank
without transferring the funds to a foreign account to enable me share
the proceeds with the receiver. The money will be shared 60% for me and
40% for you..

There is no one coming to ask you about the funds because I secured
everything. I only want you to assist me by providing a bank account
where the funds can be transferred. You are not to face any difficulties
or legal implications as I am going to handle the transfer personally.
If you are capable of receiving the funds, do let me know immediately to
enable me give you a detailed information on what to do.

For me, I have not stolen the money from anyone because the other people
that took the whole money did not face any problems. This is my chance
also to grab my own but you must keep the details of the funds secret to
avoid any leakages as no one in the bank knows about the funds.

Please get back to me if you are interested and capable to handle this
project

I shall intimate you on what to do when I hear from your confirmation
and acceptance. If you are capable of being my trusted associate, do
declare your consent to me .

Waiting for your urgent response.
Yours Faithfully,


Mr Andrew Kabore
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
