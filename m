Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6D512066F
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 13:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0104087DA2;
	Mon, 16 Dec 2019 12:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qTNng3RrsySg; Mon, 16 Dec 2019 12:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4452C87D63;
	Mon, 16 Dec 2019 12:56:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB411BF419
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 12:55:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3C64487C9C
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 12:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 51oY1lyxL-HB for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 12:55:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E61287C17
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 12:55:54 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id l8so4958800edw.1
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 04:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=tDwS+iNU9JGSp+goJy4t4RaGpR/i+KbC6rKWKCSOga0=;
 b=tsaFFwAkFZPP3uePZhLGpihy3O3TyfZCUNT49AgDqcgEQbCsmMswil8lcmPpx7MVWA
 ZyLaoVA/bbz6k1dybdduufHEzItoBHmNd/0c91+2CoSOeJ1if9bcfPyaceiiDKbMLsJ2
 Th6c9HrUOkLuDwWbKdVXKt5K+YG+mIbV5mIP2jqbUOgL4FMMVdzTeMz2vA+4t8WdxZRy
 B/NsV2eBRsGYFKgZqSZZEHDQqu99IZc0Y0jC4114vAXPiiGfK86U3kAP0Wll4ut94Thl
 L/E3wr7+NuGUxjzVwEKWtzF9HL8OGcHxtGH5Y+8hOow1j1/tJ49VHNpYs2rLejWJSqci
 2nuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=tDwS+iNU9JGSp+goJy4t4RaGpR/i+KbC6rKWKCSOga0=;
 b=o0263OzuZOLqN3mNblqX+OkdiS4vF7KNA0QmFcJTqWlkGtLnor8bVauZ2ZWHE8A0n/
 G5Kfhoc/x5H0wwIQyrkkNOwzjuNbn50SRAi+PdPl86NG+iE+uXyaOLcKO5Rk+/v9om2Z
 09jZKZESoYhMvzG7/YcBPqrrq6yeoOXo4hNY441b3UeXklR1+wEpzb78p3COJmURRvN1
 kuBSj2g726gxKMz4heY+B0nzfjZW33CFYuj8n0o+Xt+6FZheiDHHeSSjWSe7anHJ2BAX
 cwTCsGV1IihSTeYwP7n/nEgjTjNxWBmdi7R9r2lobn46KNzy68oJDp7T7M14SMMdgX6Y
 L4Sw==
X-Gm-Message-State: APjAAAUuRcEvZkmq1ygs1HxiSu0/A4HZufk4E38HpisjP1/V3J6oPKMZ
 ZoG0rRNoDcnNvVMaVQqDZ0xIW9GZMkFMsGX6YxE=
X-Google-Smtp-Source: APXvYqy4YQhEsUngx6+kPmjSqg6TVkx0e06K7noYt3aS+IjSlGNX/ZkXV5EJkL/PUPpff1SgWN+R5yB0DYNFcv/VDSg=
X-Received: by 2002:aa7:d84b:: with SMTP id f11mr31679903eds.96.1576500952537; 
 Mon, 16 Dec 2019 04:55:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:22dc:0:0:0:0 with HTTP; Mon, 16 Dec 2019 04:55:52
 -0800 (PST)
From: "Mrs. ALAN UDE,
 Official Director.Money Gram-Benin" <eco.bank1204@gmail.com>
Date: Mon, 16 Dec 2019 13:55:52 +0100
Message-ID: <CAOE+jADT4zuvCiAsa=43yEUKtgEWHsvOfM28G2V1JjY+Fiw3gA@mail.gmail.com>
Subject: Why did you authorized Mrs. Lyndia Paulson to receive your funds
 $4.800.000 us dollars from this office?,
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
Reply-To: moneygram.1820@outlook.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MONEY GRAM.
AROPORT INTL DE COTONOU COTONOU.
Office of Mrs. ALAN UDE.

Attn,Dear Funds beneficiary.

I am Mrs. ALAN UDE., Official Director.Money Gram-Benin
Confirm to us urgent,
Why  did you authorized Mrs. Lyndia Paulson to receive your funds
$4.800.000 us dollars from this office?, I need your urgent response
now because this woman contacted us again this morning with all her
mailing address stating that you are very ill, meanwhile you have
advised her to claim the funds on your behalf, i am real confuse now,
and i need to hear from you urgent before our office will release your
transfer to this woman,
Here is the address she forward to us this morning where your funds
will be transfer to her.Please do you know this address?

Full name, Mrs. Lyndia Paulson
Address. 21644 Vaca Dr.
Eckert Colorado 81418
Country. USA

Also i want you to know that we have cut down the transfer fees to
$23.00 only for your help, to enable you afford it,
this is because we need all our real customers to receive their funds
before the end of this year 2019, due after this physical year 2019,
all remaining and unclaimed funds in our office will be cancelled, so
you are advised to try and send the remaining $23.00 today so that you
can pick up your first $US5000.00 immediately today,
I promise you with all of my life, no more fees, this $23.00 is the
last fee you will pay to receive your transfer now, once i receive it,
you must pick up first $US5000.00 at your Money Gram today,
and i will send you another US$5000.00 tomorrow morning, i just plan
to make sure that you receive at least $100,000.00 US Dollars before
the Christmas day, to enable you celebrate a good Christmas with your
family. Note Iam only here to help you out and make sure you did not
lose your transfer total amount of $4.8m us dollars to Mrs. Lyndia
Paulson ok.
So try and send the $23.00 today once you receive this email ok. God
bless you, it is your time to rejoice and be happy forever.
Send the transfer fee $23.00 to us by Money Gram.

Receiver's Name--------Alan Ude
Country------Benin
City address-----Cotonou
Amount------23.00 dollars Only
Text  Question---------Honest
Answer-----------------Trust

Thanks
I wait for your urgent response
Mrs. ALAN UDE., Official Director.Money Gram-Benin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
