Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5A54F71C
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 18:41:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0A3D85E43;
	Sat, 22 Jun 2019 16:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a_1BDVlCMI86; Sat, 22 Jun 2019 16:41:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90A2385A5A;
	Sat, 22 Jun 2019 16:41:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 826911BF2FF
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 16:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F62885B0A
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 16:41:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7FisatvLWzWO for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 16:41:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0392385A5A
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 16:41:08 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id t16so5118476pfe.11
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 09:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lJepOsaA8mamkEWBgZFhhdkuq2on+kd/GU1u/vUh49o=;
 b=mu6JU6JFyAZ+TREz1RN+V2t/T29Se0Wd3A1zzBwUuz58G1ldV8WJwhZfVlHdinhcaO
 UDBvQ1ffTp03sRnblV0fkphEGljhoxjU6FZ0FCHAjvDMpEVzgNX+w8fRNU40z9CCScP5
 Iew8fyLOpawIpuYh3MxDJ5Klk++x7BxbTSaTe0zKXtIu9vrPR8yhiU/dmnz5JPIvP3lH
 pou0yILYMCKlaa3ARWYNDTQXmp6zcEi4mR2jAftIG5KR9z0OgARdbBTR/hk8l1Zjd+Nj
 fWYCMRQoiLOSJn0ooyT4h/W+63z2xHsqjSfMvxQocd7QkDuCQJsssmvhVQkntK63iKFX
 qA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lJepOsaA8mamkEWBgZFhhdkuq2on+kd/GU1u/vUh49o=;
 b=UmVITteI7k57V3AKGnnKnQwYd7tEjZKR4ViQocV7o+m4G6yJGzResbkdj4loNq/081
 dAYscCoatpTaJytQ4LzP4IpK4aPLVRkfJ0WNsMR5xmYC54n5NgPxZ6109s09yDq7Oi86
 tvAVY1eDZNRc2KpE8p2JOMeSQX1MWRzJoTVlwA5MqS53dsR1ZrBkS/3dtF/WJngwTJkD
 Z9yXHNJsdiInF/SJsWDa08JPzRwbLZwwpigcVTwm66vlpIhRJ7kOFF9hBA4xGcsCKgya
 wpioys5ZV67JjtVa5XD/a50d2SImbN99lzrXNpizLBcCIQykmr9PDlotKNlrB+DaNH4L
 rNxw==
X-Gm-Message-State: APjAAAWTq9d3/eAesfPNDV62ORhf9DVMOogpi2vglXrSGktketfpEGBC
 Eq7y0Cd92LwE0SG55wMXEPA=
X-Google-Smtp-Source: APXvYqxY6WZ9J1wmcavq39bA3G5zySVTK0kZEz5Lo/CRKStdyZfu7ty3tpwEmnhUkzQWpy5LBlFE1g==
X-Received: by 2002:a17:90a:21ac:: with SMTP id
 q41mr14205717pjc.31.1561221667593; 
 Sat, 22 Jun 2019 09:41:07 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id u5sm5809161pgp.19.2019.06.22.09.41.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 22 Jun 2019 09:41:06 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 0/3] Change function return type to void
Date: Sat, 22 Jun 2019 09:40:39 -0700
Message-Id: <cover.1561220637.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset modifies function return types to void.
The return values of the function are never checked and 
they always return success.
This resolves coccicheck Unneeded variable warnings.

PATCH[1/3]: This patch changes return type of rtw_suspend_normal() to 
void

PATCH[2/3]: This patch changes return type of rtw_suspend_wow() to 
void 

PATCH[3/3]: This patch changes return type of rtw_init_default_value to 
void


Shobhit Kukreti (3):
  staging: rtl8723bs: os_dep: Change return type of function    
    rtw_suspend_normal() to void
  staging: rtl8723bs: os_dep: modified return type of function    
    rtw_suspend_wow() to void
  staging: rtl8723bs: os_dep: Change return type of    
    rtw_init_default_value() to void

 drivers/staging/rtl8723bs/include/drv_types.h |  2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 14 ++++----------
 2 files changed, 5 insertions(+), 11 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
