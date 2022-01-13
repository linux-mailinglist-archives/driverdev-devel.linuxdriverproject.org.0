Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7D548E085
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jan 2022 23:42:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BF09410D2;
	Thu, 13 Jan 2022 22:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IquR3x-PLUNn; Thu, 13 Jan 2022 22:42:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 721E8408BF;
	Thu, 13 Jan 2022 22:42:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE31F1BF476
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 22:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B71A040A71
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 22:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yzssnSeghimr for <devel@linuxdriverproject.org>;
 Thu, 13 Jan 2022 22:41:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3451B40123
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 22:41:53 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id m1so1145538pfk.8
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 14:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=YbEI3Q/NEjCtDTVCV1jkA7nYNYBH/Wfa2wk3IkVyJko=;
 b=OZP/QoKN8ru5XovrHZZEtRGAPOqy8yRZtZX0efEKVWs/Q7f6+2JX3Mloojh5SZ/AxH
 cPAHMJhJrLRzzoPYh5n9fG2/pMOrYfS/PU2zx88sTYLTj0Dv1cVWivcA/TNU5IJgRtzI
 yyO22l7H4XiZ577o8zD4nj2E5AestX9VYls3ntwqOHZNPl0OsU/EptDmXh66odxZFNCy
 EIQC+hO6HyVDK/x5ziZcfqIxZJTlgvB+YGNZLq+4zSXQW5IZ9FoHkF7Eb5K19JwK6tqA
 L1pbJiPTkM7B36B6kKA792uSFGR69D9KVeYMTQ95Fzk4WvuXfGt3UHBLmZ7aOqdAe8eh
 8P+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=YbEI3Q/NEjCtDTVCV1jkA7nYNYBH/Wfa2wk3IkVyJko=;
 b=en9zLGySWihzf4sWabstBrxNymjhHy7uE8Xj1yQjhMCL2H/F/HDRH0lnlatPcM3sJG
 yr02axdd3mQTzj/rKOWA3vTBIabjXMJXehkcpBOFlFYRRCVGatDtz+V91+GEjCaIpvc0
 Y2UBuAun0EynSkS4ap3nnPJYx7QKRdVuFgOjswJKm5UiS8OjPJoYiuGmfyGJ2fWH+5uC
 m88Hb0KQgKAkiMGfVk3MC/cH6DjLQGjC+ku/vRiFv51TT+ynnd0R1Ku7EumEHTM5JrwB
 zu+ZHeocqVg7etl/arOt9UJNHqDAcIPm0C8LelwuL5WHACZyZpvyrshpP3HLWdWhjGXe
 BF0g==
X-Gm-Message-State: AOAM531XUTIha9YfCcHbcEA8oKG5CRvlEfPG0yazDmoFDZLxvaHpY/jJ
 igkm+6il/5MYqBanw04AACUhE2X1ul4Deek6H88=
X-Google-Smtp-Source: ABdhPJwo/BFuE/MyrXvV4Wc2jiueqzTZxw+feN+I2rvhYn2V6MZ0AjtfVc00EmStBrmKGTDtifrnIaK8zXPI0L+vd18=
X-Received: by 2002:a63:4507:: with SMTP id s7mr5556975pga.252.1642113712456; 
 Thu, 13 Jan 2022 14:41:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:f38c:0:0:0:0 with HTTP; Thu, 13 Jan 2022 14:41:52
 -0800 (PST)
From: Marcus Galois <marcus.galois@gmail.com>
Date: Thu, 13 Jan 2022 23:41:52 +0100
Message-ID: <CANqBaXVSfOGLj7J26QWPsx3dwN0Cxmg71Yc9hV9b7yv0f0E1qQ@mail.gmail.com>
Subject: Good News Finally.
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
Reply-To: mchristophdaniel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello friend.

You might find it so difficult to remember me, though it is indeed a
very long time, I am much delighted to contact you again after a long
period of time, I remember you despite circumstances that made things
not worked out as we projected then. I want to inform you that the
transaction we're doing together then finally worked out and I decided
to contact you and to let you know because of your tremendous effort
to make things work out then.

Meanwhile I must inform you that I'm presently in Caribbean Island for
numerous business negotiation with some partners. with my sincere
heart i have decided to compensate you with USD$900,000 for your
dedication then on our transaction, you tried so much that period and
I appreciated your effort. I wrote a cheque/check on your name, as
soon as you receive it, you let me know.

Contact my secretary now on his email: mchristophdaniel@gmail.com
Name: Mr. Christoph Daniel

You are to forward to him your Name........ Address.......,Phone
number......for shipment/dispatch of the cheque/Check to you

Regards,
Mr. Marcus Galois
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
