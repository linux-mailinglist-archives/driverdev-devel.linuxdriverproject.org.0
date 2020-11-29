Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ACA2C773E
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Nov 2020 02:52:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4443186E91;
	Sun, 29 Nov 2020 01:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1LWX1ZfrOhwU; Sun, 29 Nov 2020 01:52:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3867B86E59;
	Sun, 29 Nov 2020 01:52:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37F8D1BF2FA
 for <devel@linuxdriverproject.org>; Sun, 29 Nov 2020 01:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 30AEF87BE3
 for <devel@linuxdriverproject.org>; Sun, 29 Nov 2020 01:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eGgYpUUYtTkQ for <devel@linuxdriverproject.org>;
 Sun, 29 Nov 2020 01:52:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E71687BE0
 for <devel@driverdev.osuosl.org>; Sun, 29 Nov 2020 01:52:49 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id w16so7435554pga.9
 for <devel@driverdev.osuosl.org>; Sat, 28 Nov 2020 17:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=BlIhbHiWDuJmdJl5aWBurDpw0CH/TnRRlKpWM5+FcxQ=;
 b=AsbqFL404ic1iWkwev4iGj49GlokYRrIXxnQcFRWtKAnioGqzdcppCewsyBHoHXgaT
 KgVcdLFTQeloWwLvRUojc6vj5sOYCUqYVqQDqcit/VrkvHOn0fG9mH91rIaqhc/b7mK/
 NfMb+jWWOXFTwJlwXlOxg4mwB0F98/Nfpjew134e+VcG3nt6HN6HZyltnda0gcOvVejU
 1ixo8niqCzXn/JrzDWNwUITXdImuC42h66zdzEns/jaBZW/9QMQ0rysPOoqa7Gds/KEP
 a/fguT0HpHGAOZ2RkQ+WMX07hLnBkovuywsU/joDSsE7on8MP2xM1DxIik+lCFnAsxZ4
 sLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=BlIhbHiWDuJmdJl5aWBurDpw0CH/TnRRlKpWM5+FcxQ=;
 b=AmBLBHuiFCcnJA2hl6PNOnPvyZ9vsd7srR7/rUt8FsaNqCNu7zwz/uTFy00BeItaUD
 u9UIKN73qbptc3jJy4Nm1DoHU8bdwUgZ0D9gHRu0/bZ4F7r3jhRT1ZAphazX/MKb1nQn
 b6y9Gu1vwINvMCWHmcIrFlfif0o6nE9BfexOAmu30GXw6R/WELcDtzAtCr6eL2EqJEvI
 rsf78JPHp4lkav0M0RBCUaa6JGmR9RlZjgTNks1/qtfHBtyqV3XywuwhwsFZgbRwMLCn
 J7alAMxv2aAPYw2O5vBeCZgqPE1WQifTG3XlKzzi9DEvuteO5cEmKDY9Qb0UMtrJYqKQ
 Phbw==
X-Gm-Message-State: AOAM533nf6Zn4erHjV+K8UhK/b6Rz0THVsma2vIna/202QtsCOFpE/CT
 wwZweFnzv4HH0lEHPDzGQe0GWvom9zgPIPThTQ==
X-Google-Smtp-Source: ABdhPJy1nsaOS1StXX2f1vknBo/I1ZBlw5JEHXkWZ2cyvqanFa6/N0/Ui9ssYEkK3gaLfZqBL9ErjH81GbllHamLPiY=
X-Received: by 2002:a17:90b:784:: with SMTP id
 l4mr19070729pjz.56.1606614769080; 
 Sat, 28 Nov 2020 17:52:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:654b:0:0:0:0 with HTTP; Sat, 28 Nov 2020 17:52:48
 -0800 (PST)
From: "Dr. Nicolas Wong" <nicolaswong730@gmail.com>
Date: Sun, 29 Nov 2020 02:52:48 +0100
Message-ID: <CAOU-6b+c18+PmVek1kE9Egw1w2ZRnEMrhMRM5r_fD7o=YZvDpg@mail.gmail.com>
Subject: Good Morning,
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
Reply-To: hs8qfc11@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I'm Dr. Nicolas Wong, did you Receive the (FUND), that was paid to
you? please, do not hesitate to Let me know with your full name:.. for
immediate verification notice,

Thanks,
Dr. Nicolas Wong
Foreign Remittance Director

Sincerely Yours, Respectfully,

Mr Bill T Winters,
Group Chief Executive Officer & Executive Director,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
