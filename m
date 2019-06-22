Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6864F564
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 12:51:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61366861F2;
	Sat, 22 Jun 2019 10:51:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9lRIXkRO5iyW; Sat, 22 Jun 2019 10:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE621859D6;
	Sat, 22 Jun 2019 10:51:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1315C1BF5A7
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 10:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10178862F4
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 10:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y204UylJKEMa for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 10:51:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 30CA0862E8
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 10:51:21 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id i11so14042429edq.0
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 03:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Un5Ke0Ru3iTFXv9DrHEizflVlYGBaDhARoB+8+C5nXM=;
 b=XsfKpD70QwVwRaUkYwkjxXmEDdjuyGd2pLZzbMwSVjcw16p6t9h6u6IgmHpS9u8dsY
 baq6O4r2PA098rlnxyFD6o5f1NReE9U+dMeCastal8rZuoqEaKCupeJ4L1NQZ4ZjQoX7
 ZBzUUtm1v2U7UeDXYeiIlbfg2WAkO+f3nNyFjKnDTvKGXDGanbVpJ+0ZCu3jeUfvmOQd
 kILymMxcfWgfJfVroy8uKSfv5yT4POP0Y7Qhmhf3DG+A8EUN3z6j2zgFgtbPnlIb1nV/
 T+6+D80OQwAYacgGC4FPWcyZbx53X2ECGptovXaH16w7+KE3OEQdf+ajJ6QT0IHxc/Yz
 3VIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Un5Ke0Ru3iTFXv9DrHEizflVlYGBaDhARoB+8+C5nXM=;
 b=tJt74McFrdxq9KVqnXuI+v6OI341jdMy/axaB09iJhrOEDO88LwcKIVJn2VSip/Mo1
 rUiBVbOno9INyNSfTKExTrlu+6iVwpUlD2aucKXRkKh4n9xkH7m3Gp2HgFxo2Xz1mLyX
 jZ8evm9uh0GD695kdoSzGR20WMoW9agi8XLA2nQpsIbH/xSX89EZsRjimQHVQ8el0qAK
 lPM15ap2l1S86AdMbRf1An2RP9LB3i/amkr4Kunf4XlIsjXlzrjmW9vWOUI6CpoITG5p
 oMGU9DTcShY0Zu/y8EupTVRSb3e9fg0MZc+qRFqagPnqIzZfBgrXxuBzh/QiSuA56hnC
 Ve0A==
X-Gm-Message-State: APjAAAVVWbx42z7+wZ/9d7vxNbw1mlPOes9yt2NwQmH6Rbv6D4kNjM5/
 ZDP6M7iG1f+jb8Rjrows+a2rKfKCUhzddha3DFM=
X-Google-Smtp-Source: APXvYqyvi9Y+Qiu/TatbF3pfRDqR4BSguKLmEvf4JVGX3B2varSHuXro/aH3zx+wRivfcncLnIAzthtq3Mfbn0/8KMU=
X-Received: by 2002:a50:b3fb:: with SMTP id
 t56mr100401076edd.303.1561200679641; 
 Sat, 22 Jun 2019 03:51:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:640a:0:0:0:0 with HTTP; Sat, 22 Jun 2019 03:51:19
 -0700 (PDT)
From: "Miss.Fatima Yusuf" <miss.fatimayusuf@gmail.com>
Date: Sat, 22 Jun 2019 10:51:19 +0000
Message-ID: <CAC8N3VQg3EL8DNXo6GcBg5v1rFm=vyEU70E1zyKnyL5d1EMyqg@mail.gmail.com>
Subject: From:Miss: Fatima Yusuf.
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
Reply-To: miss.fatimayusuf11@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From:Miss: Fatima Yusuf.

For sure this mail would definitely come to you as a surprise, but do
take your good time to go through it, My name is Ms. Fatima Yusuf,i am
from Ivory Coast.

I lost my parents a year and couple of months ago. My father was a
serving director of the Agro-exporting board until his death. He was
assassinated by his business partners.Before his death, he made a
deposit of US$9.7 Million Dollars here in Cote d'ivoire which was for
the purchase of cocoa processing machine and development of another
factory before his untimely death.

Being that this part of the world experiences political and crises
time without number, there is no guarantee of lives and properties. I
cannot invest this money here any long, despite the fact it had been
my late father's industrial plans.

I want you to do me a favor to receive this funds into your country or
any safer place as the beneficiary, I have plans to invest this money
in continuation with the investment vision of my late father, but not
in this place again rather in your country. I have the vision of going
into real estate and industrial production or any profitable business
venture.

I will be ready to compensate you with 20% of the total Amount, now
all my hope is banked on you and i really wants to invest this money
in your country, where there is stability of Government, political and
economic welfare.

My greatest worry now is how to move out of this country because my
uncle is threatening to kill me as he killed my father,Please do not
let anybody hear about this, it is between me and you alone because of
my security reason.

I am waiting to hear from you.
Yours Sincerely,
Miss.Fatima Yusuf.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
