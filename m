Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AE4143227
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jan 2020 20:26:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7D3385CD8;
	Mon, 20 Jan 2020 19:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 51n5OEjhr01k; Mon, 20 Jan 2020 19:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08C4985CFE;
	Mon, 20 Jan 2020 19:26:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2C281BF97F
 for <devel@linuxdriverproject.org>; Mon, 20 Jan 2020 19:26:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DEBB9839C1
 for <devel@linuxdriverproject.org>; Mon, 20 Jan 2020 19:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 76+WV8qDag1B for <devel@linuxdriverproject.org>;
 Mon, 20 Jan 2020 19:26:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8315F86174
 for <devel@driverdev.osuosl.org>; Mon, 20 Jan 2020 19:26:18 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id t8so413817iln.4
 for <devel@driverdev.osuosl.org>; Mon, 20 Jan 2020 11:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=z7I/Kq2V0EnXiuoACdRbnwoAql3KZ080nwyXVjlruyU=;
 b=qTXwyWGS0wBajjfi1UtIp8THp3zO9Z4Jplw5IwdVIBxrw/tI7sUmblibT00yyiUgtl
 1lQDhOZ8jc/K/Bh4mS8dW0TeZ3bKOj28SSiD30DbLPDBSo25Z7Swgt8l8ekhXkddSPZF
 ceBMyNaHvzd7Y332oIyUXtydKW46HpxgRzHa87iWfVdwSalLdb8EY9tbzKRDJhfHFYGe
 QizZHYDPiGcvG8q+sJehOVFcQTn2XArBf67FXPSgoKVYFjuPDhBOVoiTFOdDF0vK0hrh
 fkHsh+Odx3uH6k9g0zMcPOYYAvzCpJwMuscd7WJ1fFqGZyY8LdEpu/7pDFf2O15CqHsV
 CiCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=z7I/Kq2V0EnXiuoACdRbnwoAql3KZ080nwyXVjlruyU=;
 b=APTBUmd3HTBwaZHo/flpTOXmvFxLHndr0QEYA14WundWcekTp2Hm0W1NxLeipKhWaZ
 qBJ76Yg4EvM2rKiWuEXnznTom0KQ3aaI2/gVTsmfHp+m9qTDZxxgOrjyjy5L1XRmVIzp
 W7PhKeYA6fDCOcVVFZoOuJkvjv4tms/5PJ8/H1trBa/nSb+j6H2UvTc/akd+P8xeNp+m
 8VgRDeCQVHGhpJw5W1LffTkwWLDAfBhR4UCJ90/IR7ONCvEhX+TtHl6hGzZXdwSiBIJg
 AoHuroyrinTI6kB4BA5w6nzTMUx+ocT3Gh8bOdQDmAwYhyyRtf4g0MlwWjCCzdHvUMeu
 YurA==
X-Gm-Message-State: APjAAAVxXf6qYpVz76swc94IeZFY+aA+MS+64tUJnChlXEqQgTWRQEal
 mimX6BrrTwxWXA+RkYLihndeuOBymLqrpZCs0g==
X-Google-Smtp-Source: APXvYqyF0HDcRtGYppn6RzhGE6WiNdXBXeS3n2h8mAozZ9fFrYKg+o1349oXwkry3RZ+DmFzV4L1DIkX579mdWvytco=
X-Received: by 2002:a92:5845:: with SMTP id m66mr502502ilb.257.1579548377722; 
 Mon, 20 Jan 2020 11:26:17 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6638:584:0:0:0:0 with HTTP; Mon, 20 Jan 2020 11:26:17
 -0800 (PST)
From: "Prof, William Roberts" <info.zennitbankplcnigerian@gmail.com>
Date: Mon, 20 Jan 2020 20:26:17 +0100
Message-ID: <CABHzvrknY6pcKiJfrRahucCjz5YWjT7AxQgkghCO=7hrn3XSAw@mail.gmail.com>
Subject: Contact Diplomatic Agent, Mr. Mcclaine John to receive your ATM CARD
 valued the sum of $12.8Million United States Dollars
To: undisclosed-recipients:;
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
Reply-To: mcclainejohn.13@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn: Dear Beneficiary,

I wish to inform you that the diplomatic agent conveying your ATM CARD
valued the sum of $12.8Million United States Dollars has misplaced
your address and he is currently stranded at (George Bush
International Airport) Houston Texas USA now
We required you to reconfirm the following information's below to him
so that he can deliver your Payment CARD to you today or tomorrow
morning as information provided with open communications via email and
telephone for security reasons.
HERE IS THE DETAILS  HE NEED FROM YOU URGENT
YOUR FULL NAME:========
ADDRESS:========
MOBILE NO:========
NAME OF YOUR NEAREST AIRPORT:========
A COPY OF YOUR IDENTIFICATION :========

Note; do contact the diplomatic agent immediately through the
information's listed below
Contact Person: Diplomatic Agent, Mr. Mcclaine John
EMAIL: mcclainejohn.13@gmail.com
Tel:(223) 777-7518

Contact the diplomatic agent immediately
because he is waiting to hear from you today with the needed information's.

NOTE: The Diplomatic agent does not know that the content of the
consignment box is $12.800,000,00 Million United States Dollars and on
no circumstances should you let him know the content. The consignment
was moved from here as family treasures, so never allow him to open
the box. Please I have paid delivery fees for you but the only money
you must send to Mcclaine John is your ATM CARD delivery fee $25.00
only. text Him as you contact Him Immediately

Thanks,
with Regards.
Prof, William Roberts
Director DHL COURIER SERVICES-Benin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
