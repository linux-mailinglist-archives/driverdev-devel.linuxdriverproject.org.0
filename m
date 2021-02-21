Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59948320B5F
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:31:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4730A85BAE;
	Sun, 21 Feb 2021 15:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q0LzqjlE1LTc; Sun, 21 Feb 2021 15:30:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F17285BB5;
	Sun, 21 Feb 2021 15:30:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5457D1BF954
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:30:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51332870C7
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xk5m-H25WGTU for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 15:30:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24B8D8709F
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 15:30:55 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id s16so6044930plr.9
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 07:30:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=YApQnQq4jiP2ASaiw6ZTwSKXh8LQuBtsU7vVCi+HrJA=;
 b=HOm0cMB0zsIfMqfxCJsgb5y2t1ADkI3vBi8C7uzesSJWCgc+I7Xqpch1nz9xBjAHwH
 O9KTD3yanlZii3ia+tZOy4FROdu7V+a9e+FX8ZJRZQDO/GrKB3mgtJrxKj1H79oKTQZt
 eXO2tLLBo9LJPr7xHS7Z+vYkKOR6pw7fo4MEBDVJbTXVbnUPOeRAONIkeS2KSDNBz02J
 lR/Xwx4tPE6yybRcyLezv3N7o7dHAAPmUy+bfX4Rd1YZ5e93wDVWbSoo+TqG2Qy2R7D7
 5bnYHMgf3WYZQZerj4+BVN9XNAuvwc6c4YYI6ZjGGglta+Ci/OuWdZg3Z9hQ8Q9Q9TO1
 2QXQ==
X-Gm-Message-State: AOAM531KJocT/vxM8chXtuxcVaDwiEHmivkQVm1zh6f2wW0xa69iRYb5
 brdkarOCBfEmMBBKAdeHWMRrHczkMlI=
X-Google-Smtp-Source: ABdhPJzDJXDoRP8iS4a2MCWZu8YbK7Y5dl0VlrYMyHe8CY2rkMcLsSmS2TGNDTJN57YZ/AM/bzGF+Q==
X-Received: by 2002:a17:902:be12:b029:e3:8245:f16c with SMTP id
 r18-20020a170902be12b02900e38245f16cmr10642401pls.57.1613921454757; 
 Sun, 21 Feb 2021 07:30:54 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.12])
 by smtp.gmail.com with ESMTPSA id gq15sm2633915pjb.9.2021.02.21.07.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 07:30:54 -0800 (PST)
Date: Sun, 21 Feb 2021 21:00:48 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH 0/2] fix sparse warnings
Message-ID: <cover.1613921277.git.mail@karthek.com>
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

the following patches fixes two  byte-order issues
and fixes these sparse warnings


drivers/staging//wimax/i2400m/op-rfkill.c:89:25: warning: incorrect type in assignment (different base types)
drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    expected restricted __le16 [usertype] length
drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    got unsigned long
.
drivers/staging//wimax/i2400m/fw.c:514:27: warning: restricted __le32 degrades to integer


karthik alapati (2):
  staging: wimax/i2400m: fix byte-order issue
  staging: wimax/i2400m: convert __le32 type to host byte-order

 drivers/staging/wimax/i2400m/fw.c        | 2 +-
 drivers/staging/wimax/i2400m/op-rfkill.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
