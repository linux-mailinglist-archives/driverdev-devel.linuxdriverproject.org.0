Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DCB195B6D
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 17:49:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D91D87716;
	Fri, 27 Mar 2020 16:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GL--CEuSRwI0; Fri, 27 Mar 2020 16:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE00F8770A;
	Fri, 27 Mar 2020 16:49:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05E6B1BF299
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 16:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01CFE88816
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 16:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OUj3gygAtppS for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 16:49:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 510CE88623
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 16:49:31 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id cw6so11300312edb.9
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 09:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=jsv2ErPknI73smSdnngvvu/Pml3bBBSalSP1U+N6RSQ=;
 b=qbPXFFi6+E6kYcNw/zc72ppnRWDlPoseWdqMHGMVYBy4p1yhrWrW4Vhm+L3+IMepnU
 nfK+mxw/iSIQJPogZ/uAm/Al7MFDpdBpClWwKiiAzo8w1Xuw2K4svdwR1UaCUR3ECCSl
 EhbU/Mp54EuSYPKe1MgydsQ0MQbXD68T04l9MJo6edy/XZQ3wRuWg4IxWHoTAzosRItV
 yMQkwyNkzgT7P75I0DATmBdoEaLqYPDI2SSIMkrCRp6KYK2doUVAXyxd7Hs4c57zZ2LO
 5PVhxUzzPvOM5vFJoWeuOkFUMzxcUyuX2KQ7H0RGMnjRTJAwnv6+wQ+eU5Vd56UAOVk0
 FIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=jsv2ErPknI73smSdnngvvu/Pml3bBBSalSP1U+N6RSQ=;
 b=TmJLH2xNv2ahRTtLK5upyHCbrYWiwZI2PS5CVZOLVbugt4f9b0NgByckcpsUZs1i2H
 4AOl5npgpJ07PuEkHzJtrwnfkIwM0htRaEchhj+URprPecJFajMvnLPWiTL/TdAtMqZ7
 BBWptL0HtCrjdJrKD70OaTAMM9mDucvNr/AcJ4zcH2cr+2UsvN/V+bvQqHcMxOihURBw
 rvO6ms4+19Ok9vd1a4MoISu5Gs18QUMmLY1rCtDwrFZtj8RMJJw1RwsNCtSJggXGnryB
 tDhmf7yF/aA78JY51uLLgJgHq2W95oc0DK+JBzXGWop019D+ua/lAU6YY8C3QBsjzLbL
 QLZw==
X-Gm-Message-State: ANhLgQ3+ZsWmVR9y4qkLPL4Xfx1CuetQWtwDECPio+QxAZvRChxVOz+p
 zvMJoiy2zvN08y66874T4x/tKCq/CtMrNPz4Wgc=
X-Google-Smtp-Source: ADFU+vtw+be3dTuCZ81cfQdmKto7ufpN0zdfwCQWIHiKIt3zTvZYvG0OV/KPd6JBD64KUqECjmgaufvePcsKL3X59+M=
X-Received: by 2002:a17:906:1e47:: with SMTP id
 i7mr13386071ejj.286.1585327769341; 
 Fri, 27 Mar 2020 09:49:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:84c:0:0:0:0 with HTTP; Fri, 27 Mar 2020 09:49:28
 -0700 (PDT)
From: "Mr. Mike Benz CEO Official Director IMF-Benin" <eco.bank1204@gmail.com>
Date: Fri, 27 Mar 2020 17:49:28 +0100
Message-ID: <CAOE+jADtR5-t2oAUOdWF0Vsc+3tM5FTxw798Onc++tD7NrL8+g@mail.gmail.com>
Subject: Contact the JP Morgan Chase Bank Ny to receive your transfer
 $12.5Million Us Dollars today.
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
Reply-To: jp.morganchasebankny13@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn: Dear.
Happy to inform you,we have finally deposited your payment funds
$12.5 million us dollars with our international Paying bank,
JP Morgan Chase Bank Ny, this morning
to transfer the payment amount of $12.500.000,00 Million Us Dollars to you
Your transfer is ready for you now.
Contact the JP Morgan Chase Bank Ny to receive your transfer $12.5Million
Us Dollars today
Director Eco bank-Benin: Dr. RICHARD LONGORIA
Email id:  jp.morganchasebankny13@yahoo.com
Tel/mobile, (917) 983-4846
Note,I have paid the wire transfer and insurance fees for you
But the only money you are to send to this bank is $25.00 us dollars
Been for the activation of your payment files before funds been released to you
Contact Him now to receive your transfer deposited this morning
I wait for your reply upon confirmation
Mr. Mike Benz
CEO Official Director IMF-Benin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
