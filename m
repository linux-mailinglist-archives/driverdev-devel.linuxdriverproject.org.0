Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244ED229757
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 13:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E301988651;
	Wed, 22 Jul 2020 11:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mzi6nv+MxANH; Wed, 22 Jul 2020 11:24:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2835B88634;
	Wed, 22 Jul 2020 11:24:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D05291BF38E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 11:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCA8987FEA
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 11:24:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ea0hriXtrYOV for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 11:24:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A272B87FE8
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 11:24:49 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 1so1088665pfn.9
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 04:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=cgpkwo50wAGaYC/rXs15YWs5+nRoNKrSoWKyjDw624Q=;
 b=qSBLnaUUV0E6FfTZgptPLGtHJKXx5OuI/cQidFb5sK6gwMt1A1UVhZTVKGPUSeRa9/
 lcbnjA45JUxZZotbPt2qmA4PEIsDhovcD/92top2Kf4TVW9L8E199EPvp32WwPA5k6DD
 OmfkuH+SUQWCHnGS1p7ME1Kpm11lg93Q8O0GQH+ifJZmMIGpYsYPzF6jGIPh1dfvo6TX
 MFITft7JLUy4GVlAVczvwqOWNWe6/G8env1oFGXKbPmcf5iKMn3yB+rVxHi2bFWZwJVu
 9dRfTAmbqYLLyMEajCPmQ9E6rPp1PCDrW08RX/PleyTdWFNra94XtmSePX4U16nuV8Ny
 +VQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=cgpkwo50wAGaYC/rXs15YWs5+nRoNKrSoWKyjDw624Q=;
 b=DDQGlalfrfWUmEgzmqCpBK5DsxbH7L6rLVrnwMtK0N6sAMU4osxe945DH1l6ydW59j
 7lbW9SY6oqhHcEvmIWKkRD4q7HcbC/12CgnwoersKaqY3KuSTe709bEB8qVeE4m/No1P
 L77XJuJssGOG5nz/Gk2Sy4M9BjOEkaJYf9HDbFQzC1SQj6unwZnp2xUyObEHSctjfvz5
 hdbQCnRVlUCjvtwS2LTCGTpffachR59W/szc5AQ5UeFw/zYH6/OcQ+8H4soekY7G6MhZ
 +dBRo9xC5OlqQa8ESM8c/CnXvfyAkc2BNwv7Khrl5X/MoJse5bZNJnbyuYm1hbl5UCGH
 V3Qg==
X-Gm-Message-State: AOAM5323ukLVQMbfnT+3MeluSvbmju5Qi5POwQi8Jv2viFtPwgceR1Pz
 KqAP422b5e80d85LCBCt4mQ=
X-Google-Smtp-Source: ABdhPJx8z9I3VJ24rt7UEKgKpY2MUAYyPCBxDm9+NsR+9yDB389i0QnBJ/AZej5bCAInZjLUszOMTw==
X-Received: by 2002:a65:594b:: with SMTP id g11mr27736716pgu.168.1595417089231; 
 Wed, 22 Jul 2020 04:24:49 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.73.180])
 by smtp.gmail.com with ESMTPSA id c132sm23411960pfb.112.2020.07.22.04.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 04:24:48 -0700 (PDT)
Date: Wed, 22 Jul 2020 16:54:44 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH v2 0/2] General coding style clean up
Message-ID: <cover.1595416585.git.rahul.blr97@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset fixes several checkpatch.pl warnings in atomisp_ioctl.c
that have been distributed across 2 patches logically.

Rahul Gottipati (2):
  media: atomisp: Fix coding style issue - remove beginning whitespaces
  media: atomisp: Fix coding style issue - correct multiline comments

 .../staging/media/atomisp/pci/atomisp_ioctl.c | 20 +++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
