Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E8A20A20D
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 17:36:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63B7523376;
	Thu, 25 Jun 2020 15:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t3rnW8k-Z4kN; Thu, 25 Jun 2020 15:36:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EEB782314E;
	Thu, 25 Jun 2020 15:36:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10CDE1BF3BE
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 15:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 091EA87E88
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 15:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ezP40f152Zt2 for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 15:36:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8889387D36
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 15:36:21 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x8so2051104plm.10
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 08:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xh4gOSxe3fr64AueGWfXx6C5/rsH7NhHoKvgWVgZVr4=;
 b=gcfocTZWfAIsORMJDs+P72Uato1Oov2RJtcH3Bg28ViBsvRsEJzl+buj330N/RcLwm
 ClUxxgSrA2h2EPCPHepqL+MgbNAC6uGkUHeBRISB1U5J/0uHfSlD5teKrWSwENErrH2o
 i9Ylszk4F3OwiggHEv8JP+p2tUvWvccisuHusNfDDMhy20hEqnOUf0Wx6x8S7UGSCLXu
 l4sgmJKmCDwKyu71maQ0LBdc+kp0nBDbBtm+5iRmUQzgxw2Rw1+q+duQLsgxDPlRpKo7
 eanh0m4m8Z1N5qjnpWOrNBdN1ZSFwKzE1uP6r/fu9Gn5HgsBYcE90THyC1gmg+vMv9gT
 Wi7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xh4gOSxe3fr64AueGWfXx6C5/rsH7NhHoKvgWVgZVr4=;
 b=aSk/2iHp3Y+B6YFPPGaKo9fy4xn9twwe8qwO6ncELleteG1x6994eriGsasPEnrEhJ
 eeqVWMfd7Uf8QsNwzOrW0nytP0B1+tqAy0kDHpp4+/S61G+HCNxIauCxaYKmUxuoRp8l
 Iq5U857UkLJlYI8eFdT59vnsU7cM8bBbTXkMd2A5iazupAqzoiePhjhUcK/kJ0635qsf
 zjqMugGAtD7vnPCqdQ1M49XXGNJvBho2XDft+fgyJ+ncHY3w69EhhO2yK4AS2mUMWLN1
 rp3fqZw2kTnm1zuZzvF6cf/VAXxvolfPcLKAuVsQZ+tScpeu9czVQ9SFl3Mkkpl33EMy
 3h1A==
X-Gm-Message-State: AOAM533QRPu2BtDiDS+JvAfUqdCoSt1MSp8z5icCpKGs7qy5fGnlde63
 q87lDE30Bc5T5f2en/cYyEZPTy5R24Q=
X-Google-Smtp-Source: ABdhPJwXeMQXRTmhecPdWuFZOHSJXp6D1gHwW8Fz9fQkf9uSgLnAjkckMSsjfeyTM+i7t/2nsRQYuQ==
X-Received: by 2002:a17:90a:e7cf:: with SMTP id
 kb15mr4120476pjb.86.1593099380957; 
 Thu, 25 Jun 2020 08:36:20 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id n65sm23490118pfn.17.2020.06.25.08.36.19
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 08:36:20 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/2] Coding style fix for the qlge driver
Date: Thu, 25 Jun 2020 23:36:12 +0800
Message-Id: <20200625153614.63912-1-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These two patches fix two coding style problems for all files under
drivers/staging/qlge as reported by checkpatch.pl,
    - trailing */ in block comment
    - unnecessary else after return or break

Coiby Xu (2):
  fix trailing */ in block comment
  fix else after return or break

 drivers/staging/qlge/qlge_dbg.c  | 23 ++++++++++-------------
 drivers/staging/qlge/qlge_main.c | 11 ++++++-----
 drivers/staging/qlge/qlge_mpi.c  | 14 ++++++++------
 3 files changed, 24 insertions(+), 24 deletions(-)

--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
