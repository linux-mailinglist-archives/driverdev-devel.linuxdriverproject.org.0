Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408F72DF727
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Dec 2020 00:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D720C87B9A;
	Sun, 20 Dec 2020 23:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NMe0VtYi79tR; Sun, 20 Dec 2020 23:55:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38FA087B8F;
	Sun, 20 Dec 2020 23:55:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 558B51BF573
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 23:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5245E87B91
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 23:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5LTMeU6DbSP
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 23:55:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.devilmail.me (mail.devilmail.me [23.92.30.210])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E41187B8F
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 23:55:47 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.devilmail.me (Postfix) with ESMTP id 876C3193D0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 10:49:41 +1100 (AEDT)
Authentication-Results: mail.devilmail.me (amavisd-new);
 dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
 header.d=devilmail.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=devilmail.me; h=
 reply-to:date:date:from:from:to:subject:subject
 :content-description:content-transfer-encoding:mime-version
 :content-type:content-type; s=dkim; t=1608508180; x=1609372181;
 bh=qnZ4e9IKPCQJ3jm8gl4Quz16VOH4Ytky8sRPlldFGrM=; b=YyuwBLyPwqTf
 v2pUV8epJsXqZ9cxokwkusj5oXlIAN5sduZAif7Y8Ugh0zXHLV5nQLesRwOpai91
 +HMAxcwux9dYOaXGnEqLSdhWB6fMgSFY40NBsdaATUkFkcAnlSLc/7EZZBDkl3Q5
 yP/MPo4ABg9Q+/PkiVipPKzK2t2L+LM=
X-Virus-Scanned: Debian amavisd-new at mail.devilmail.me
Received: from mail.devilmail.me ([127.0.0.1])
 by localhost (mail.devilmail.me [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0SZRX0v-X4Ki
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 10:49:40 +1100 (AEDT)
Received: from jmapnzin.host-stage-dns.com (unknown [188.165.89.95])
 by mail.devilmail.me (Postfix) with ESMTPSA id A4D381141B;
 Mon, 21 Dec 2020 09:10:59 +1100 (AEDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re: Ember Proposal
To: Recipients <postmaster@devilmail.me>
From: postmaster@devilmail.me
Date: Mon, 21 Dec 2020 06:10:41 +0800
Message-Id: <20201220234941.876C3193D0@mail.devilmail.me>
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
Reply-To: lizawong@infohsbc.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


I am writing to find out if you have received my previous email regarding a business proposal. please get back to me as this is the second time i am writing you.If no read below again

I am Ms. Liza Wong the Head of Accounting Audit Department of HSBC BANK (HSBC)in  Malaysia.
In my department in the Bank where i work, I discovered a sum of $85.5 Million USD.
 In an account that belongs to one of our foreign deceased customers, a billionaire Business Mogul Late Mr.Moises Saba Masri, a Jew from Mexico who was a victim of a helicopter crash since 2010 which resulted in his death and his family members.

You can see more information about Saba Masri Mr.Moises unfortunate end accident on the website-link below.

http://www.ynetnews.com/articles/0,7340,L-3832556,00.html

A Mexican business tycoon was killed along with at least two members of his family in a helicopter crash on the outskirts of Mexico City on Sunday night, in an emergency .

Now our bank has been waiting for any of the relatives to come forth for the  claim but nobody has done that SINCE 2010. I personally have been unsuccessful in locating the relatives,Which the Board of Directors are planning to share these funds among them-self.
I have a good heart to use this funds to help the poor and street children who also  have a motherless home. I want to build my orphanage home, which is a setting NGO for the disability people that can not afford to eat 3 square meals a day. I don't know about you.
I do seek your consent as my foreign business partner in this transaction to present you as the next of kin/Beneficiary to the deceased, so that the funds of this accoun valued at $85.5 Million USD can be paid to your local bank account in your country. Also know that the transaction is 100% free risk, because I have all the legal documents with me to make this transaction possible, and the funds we will share are 50/50.

Please Provide me the following few information about you, as we have a few days to run it through to achieve our goal.

1, Your Full names:.............................
2, Your age:..........................
3, Your private phone number:...............
4, Your current country and residential address:........
5, Your Occupation:.....................

Please on your message and indicate your interest,
i will furnish you with more information on this business transaction once I get your response back asap.

Best Regard
Ms. Liza Wong
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
