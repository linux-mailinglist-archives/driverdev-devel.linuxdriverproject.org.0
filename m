Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F17BF27F
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 14:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC35B87E3B;
	Thu, 26 Sep 2019 12:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g5ma1FWYebyj; Thu, 26 Sep 2019 12:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16F7287DAF;
	Thu, 26 Sep 2019 12:07:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 576FF1BF9B3
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 12:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 50AB922622
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 12:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7qt+VI6wvr5h
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 12:07:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id A43082000F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 12:07:32 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id f20so1735697edv.8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 05:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=4kdRQh2RBnKVNiw/sK5zF5fAJlJg/+xzw8chsJkNqc4=;
 b=IneNk5tCbi1MKMZHwTC00RMq+guMvzSW34OwZg33wFqDweihOVhHhA9yHYodyxLoOn
 fQWGMC0yqNwV7qptENM0guLu9VyzC8siNHJKojkKjrxPRT3QRqfdWZomvy/dMC0aKsKN
 UuaHmUTmLCM0F1rj8inzzq6+YO6Y7VqUgxiTWHly2xbA/b1O9/C6Y9cUX+ZYxopeB1OX
 eqFk7QxMCyocysB3ZuA8BnHdmazLejpRo3nSJKZnVt6LlOkYZzGvJtVMnfQKuY9vhToe
 0VzJgzaKVwMlg21f/Li08nVk2QdOHCiGlXrCY241uTRTffh7d5SE41553v/wuhlTqEyv
 gj7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=4kdRQh2RBnKVNiw/sK5zF5fAJlJg/+xzw8chsJkNqc4=;
 b=AmF0V2USxAR04GB9aIVb0X0w4VPna8PEyYw/lK42PIbJ+i7Hcp17GrYL3d9dmod3F1
 f3iHfAseIBfB0+Ly7kF4vpmeKVgPah65HXknDrtEQVftu81ISaun0T9GBTfwoNZiq1L8
 Jav+EEByxPHYj5lP48N3uVXeuEu9Rk9eT4+Iar5ya/koZgSWmJOyzryKsh0LsC5NEypB
 iB6QC5pj6H3BuWulM1IDZW+9jHxno3dMnFIXT6LNsgo5Y4KbT4q6snH4M0A+OV8RyQk4
 MGk8ZGihrHcfWCxnVdapHZqTm1GoOf+UHkYMiXiAxbAre+j//ImWSot+VgrDulE9gPOR
 Szaw==
X-Gm-Message-State: APjAAAXPHxf/AXaynhjzNrUsQdkEUrVelc7uqx5rd+XyvmgWovdU7kbC
 4thK9ZX0xpH9COsOi6t/gpF3PSArnsN/PF2t7R4=
X-Google-Smtp-Source: APXvYqzwYV7HXMsXQP1GY4i8eNYOb0XSS7XJaWGhs+CvoQKsJn4ZKg5XGMczGhOZQpSY/IMOEEgZnQG47cI4ZtJIjKM=
X-Received: by 2002:a50:a939:: with SMTP id l54mr3167834edc.214.1569499650960; 
 Thu, 26 Sep 2019 05:07:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:ef03:0:0:0:0:0 with HTTP; Thu, 26 Sep 2019 05:07:30
 -0700 (PDT)
From: "Dr.JOHN DAVIDSON Dir IMF Benin." <eco.bank1204@gmail.com>
Date: Thu, 26 Sep 2019 13:07:30 +0100
Message-ID: <CAOE+jACD4qkECQnak8N196AhhJeZQcA37=vY7zM8cn=77hiJTw@mail.gmail.com>
Subject: CONTACT,JP Morgan Chase Bank NY USA for your funds transfer
 US$16.5million Dollars deposited this morning,
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
Reply-To: jpmorganchasebank.ny13@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTN,DEAR
CONTACT,JP Morgan Chase Bank NY USA for your funds transfer
US$16.5million Dollars deposited this morning,
Director, MS.Linda B. Bammann
The Bank is waiting to hear from you before transfer release to your
bank. This is to avoid any hitch problems. CONTACT this bank once to
receive your transfer today.
Director, MS.Linda B. Bammann
Emails/ jpmorganchasebank.ny13@yahoo.com
Telephone. (603) 636-4063

Note,you can only text JP Morgan Chase Bank Ny USA Director, MS.Linda B. Bammann
On her telephone No#. She refuse to receive calls due to numerous
conversations from outside of the Country, So you had done well text
her on the given phone number or email. Finally For your
informations,I have paid the related transaction service fees for
you,such as Deposit and confirmations charges, so small money you been
required to pay is your funds transfer fees, sum of $90.00.only to
enable the bank complete transfer to your bank account immediately.
God bless you,
Dr.JOHN DAVIDSON
Dir IMF Benin.

Chase Bank is considered as one of the biggest and leading service provider
in the United States. The bank is a top listed national bank located in
Manhattan New York City. It is also one of the most trusted commercial and
consumer banking services on the planet.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
