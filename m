Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F60E318B79
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:05:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 071648758A;
	Thu, 11 Feb 2021 13:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yx+2CnM7Ftje; Thu, 11 Feb 2021 13:05:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F98787576;
	Thu, 11 Feb 2021 13:05:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B83A71BF3F6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B522087004
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pZyrm8RMb6hj for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:05:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A64BD870E8
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:05:29 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id o7so3835418pgl.1
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 05:05:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=8sQZFVyzFUSfXMDM4JSNiF+doI5yrX0baGAIT672MoU=;
 b=PYs3hVI8lsRy2wIoW58jHpz/GuvPtaSSK9GIe+Rvd7TjiuhBH+SAJIN/ERQs0ifAfZ
 8EshHZpqYEr9wg8oAH3UZfUyFPf2oVzWE1waN3DlVvj4QssitdNoS1yrBtoPYt1SzqyR
 k/wW2/zvgzGKJjA8Mpy/zDhD0bbUbpBWkpI63InrPvBqdEgcrPsaFJRTF60M/q+aOF8r
 hhGP93YkU9mX6LLT5oXdSToEsawDrQYeuO8fOYryGJNrr9DQxdb4wTMYMKejqoDJXjGQ
 gHEAQlvjvAw141JlqOml8ooGmTa3ETHhO45sXt/xT1zncELswNLsqp0u+RsRC9iEaSws
 EDrA==
X-Gm-Message-State: AOAM5308m851TnExA3i7YrBzGCQIZ2ypH3WeITBaPXliSO9QoK+yQ/Xi
 fr+2ZtY9/XWD2oMlPBB/MiQ=
X-Google-Smtp-Source: ABdhPJxPn+gPZnQfttZeQw7M8amvTYPBSRLMPHxpf34tKIeAHp03aB4aF6THjle1iMaQI8HWR8OB+Q==
X-Received: by 2002:a63:c911:: with SMTP id o17mr7932806pgg.102.1613048729367; 
 Thu, 11 Feb 2021 05:05:29 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.38])
 by smtp.gmail.com with ESMTPSA id n15sm3705963pfd.143.2021.02.11.05.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 05:05:28 -0800 (PST)
Date: Thu, 11 Feb 2021 18:35:24 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH v4 0/2] staging: rtl8723bs: driver cleanup
Message-ID: <cover.1613048573.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

karthik alapati (2):
  staging: rtl8723bs: fix function comments to follow kernel-doc
  staging: rtl8723bs: remove obsolete commented out code

 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 225 ++++++------------
 1 file changed, 75 insertions(+), 150 deletions(-)

-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
