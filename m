Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505366A58EB
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 13:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 63110404D8;
	Tue, 28 Feb 2023 12:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63110404D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9dwDPjARoF_J; Tue, 28 Feb 2023 12:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E57A40137;
	Tue, 28 Feb 2023 12:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E57A40137
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 139D21BF421
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 12:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E13AD6109C
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 12:20:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E13AD6109C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tAiIOp2eNlVg for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 12:20:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D47E860E7E
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com
 [IPv6:2607:f8b0:4864:20::22f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D47E860E7E
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 12:20:09 +0000 (UTC)
Received: by mail-oi1-x22f.google.com with SMTP id bm20so7786758oib.7
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 04:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=STQhprBM8d84fL8UcfcqKEwmLdT/4tdEiPsqKQJVeEM=;
 b=HpBTzDXAvOJGO+wuoZfqUzBLhqVGc2vpjYFf4nPTaCQwQ09nna4Jp3Xmn1gLZgXvAM
 sBrZPZ3GEpRiMmwgDV4GXOFFeKWuoXCgJcbIFzJo7X1OLEvHBrzWyAo6DWk23KaDa5pO
 ZjAsAGOeGv6eGvmGbIHnnG93VqEIfRGEf1CFqt9v5zZJF5W3eA0K84XY93/ZVJlri7Dv
 kdE+4+E59eCs4VJ8epsNK0urFuRxDvanzeXIPVLftXEaV/xfBlDnUdhpvsxnZn/k0hQ1
 IXiyYG1gDF2QqxGfW504EtOZdlpw27IrZ7POr/r91fi1KK7kc8XcXxvdEyCO3fMbjngI
 W/Aw==
X-Gm-Message-State: AO0yUKWtJARC0MMUU9wSzD7Cpj3nJhoomxnRJnRhPrw+DjI6zlwmnB4+
 6qW6zpGO/KDvd+AOQC22kc9uKWD68XD5N1M/wtA=
X-Google-Smtp-Source: AK7set8GKk9hob6Rp17/6j/4dar81IJ6E5meqOzQft5xgSwqCE5fYHAHCHXmyKyj6qzXm4YMBGAWokrZdIVOPOp05Gs=
X-Received: by 2002:aca:2809:0:b0:384:11ed:a879 with SMTP id
 9-20020aca2809000000b0038411eda879mr797255oix.10.1677586808690; Tue, 28 Feb
 2023 04:20:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:3065:0:0:0:0:0 with HTTP; Tue, 28 Feb 2023 04:20:08
 -0800 (PST)
From: Rita Clement <abellaurence999@gmail.com>
Date: Tue, 28 Feb 2023 12:20:08 +0000
Message-ID: <CAHtS4Z4pAS4FfjK9tYsdRC917RJQ7ssXR4SK6eu7fZskouqFpg@mail.gmail.com>
Subject: Greetings to you
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=STQhprBM8d84fL8UcfcqKEwmLdT/4tdEiPsqKQJVeEM=;
 b=HGhleMJNeL3HMV/lDOcXvT3CsPxOeiQL6LlogStFT0bXLo+5PmTBCOgpRexAyXEA0Q
 UX9HeFa4TUR2dnUH7lx+NixM7x72Xbup6xpXfad3ueD791e5rqk/+ogNeIEFUUM1nzER
 lN/H1hbhDzhyhqrnfgtMyvQM8KnY8BECWI6dSZaGLy+CGxmNl3DhMAPH8FEGHhcdXNrP
 p1EnHxasLxfzH4WTUu/sTMhf9Fg7uXqwCtT5PRCiciXKT7v4SucqtpfEGlCYPTmH3VZz
 Am6tcp/hbCNUWpzqlXMFy7PzGzIeNDTZagon547OCO3Gpva0CSkW6FAxMcDtv+rvvu5f
 Qreg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HGhleMJN
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
Reply-To: rita.clement57@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings
I am Mrs Rita Clement, I am seriously sick and have no hope of making it.
I have a donation of $3,300,000 which I will want you to receive and
give part of it to charities in your country.
Please get back to me if you are interested.
Regards,
Rita Clement
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
