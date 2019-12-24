Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DA8129F5A
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Dec 2019 09:46:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2186920763;
	Tue, 24 Dec 2019 08:46:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGLC4b8Px-fv; Tue, 24 Dec 2019 08:46:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B211C203EB;
	Tue, 24 Dec 2019 08:46:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 347CE1BF842
 for <devel@linuxdriverproject.org>; Tue, 24 Dec 2019 08:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E7C9203EB
 for <devel@linuxdriverproject.org>; Tue, 24 Dec 2019 08:46:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVw86H5GEkm1 for <devel@linuxdriverproject.org>;
 Tue, 24 Dec 2019 08:46:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 139CB1FD90
 for <devel@driverdev.osuosl.org>; Tue, 24 Dec 2019 08:46:00 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id z8so18556288ioh.0
 for <devel@driverdev.osuosl.org>; Tue, 24 Dec 2019 00:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=oSNTlT55S3VMpFl+4fySqC3u4YoAoztGfoVSP3wFAPYFWsXQI1giXiHsJxeVgA8wKV
 hwULOTryEx3lBfxk63gUH81C2gQlAZlpm+aJQe+/8QTFExYby4VXgAHOExxmkLh2JtdG
 TiTDoeJwiEsRsob2+npOsu1HTE5l3KD8qzz/VgAKRx1Duv9MQ59SrgwEmUHNA+ZhhElO
 FLyTrc29L41ygHkbyLYW+d4tggvOE/k3tBa1QgwGaKmT05FNAOOQsBLQoIO1VpMQ67Vd
 aruBW7fco12liiTMGrdJ76u//KWiZN1ELjv5lB+Lg5aB3LosSk3HmcjI9v9Dl0cnEnaF
 MVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=o90ThsvIUMWwiNWVcmp/OjFhtvF5+24prleGWAzvwPzvjj/+IPRvjFGps2vKttfuTY
 02sje3druaC5usHG2OP1AC+pU/MSmyIT8h5zhn1uWdn9woqvnsC47I+52gTiBu9Pk1i6
 BS95mSRWYB8toXaE7AdQ5Jm1CCjGZZyRyLfMawmZ/5mAezYD0lgLZ2zlOtfiXJM6Qu4r
 ua+VzQvgHd+dC1m98AskCrb/nu/pOAtwHfIRTX0Il66wParqSb3nRLLCbpnX/gELfTFg
 Lnk2AwxfFUzkPK0FzhyI0bGa6KY/k1IMSbcE+qgAaAJ9BfOEH06EtzgLU+EYaKedP+CG
 KiJw==
X-Gm-Message-State: APjAAAWZKrRkU+Ji/x2iT0f9Hqzq/OcD4ow7Q1e6fc0Hm0l7Ydi03PIF
 mTiqCSkV7Wv0paLUG/NNBKDLDW8ZTh7NKWgql+c=
X-Google-Smtp-Source: APXvYqzDXPiusXd90IvAVlyEbeO6jCMdOyb5CPbz+Z0EDnXal3aG8RcvJ2u/hlIr8XoTCaRoauJNJKQwlLXTh0fOni4=
X-Received: by 2002:a5d:9158:: with SMTP id y24mr4336955ioq.298.1577177159339; 
 Tue, 24 Dec 2019 00:45:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f302:0:0:0:0:0 with HTTP; Tue, 24 Dec 2019 00:45:58
 -0800 (PST)
From: Beth Nat <clementidibia1960@gmail.com>
Date: Tue, 24 Dec 2019 08:45:58 +0000
Message-ID: <CAEG=icH-SN5dpsQRSZpGxr6Zs1qfbZ=LtCEFq=gRxqcGeKyiKw@mail.gmail.com>
Subject: 
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
Reply-To: bethnatividad9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

How are you today my dear? i saw your profile and it interests me, i
am a Military nurse from USA. Can we be friend? I want to know more
about you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
