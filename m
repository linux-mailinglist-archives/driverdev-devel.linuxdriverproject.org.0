Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87069D1EFB
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:40:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26C1D86B18;
	Thu, 10 Oct 2019 03:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVRq5Ylu9iJr; Thu, 10 Oct 2019 03:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BEB986B16;
	Thu, 10 Oct 2019 03:40:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9641BF2FB
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5A0D42420F
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6DoOH7+fGfX9 for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:40:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C3C7C204BE
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:40:08 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y72so2954369pfb.12
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 20:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZK2sCc0LVeILJIcSjSFvo/+6Nag3nmcw2niS7MjL9pk=;
 b=MZbjJKd7k1YG/Oj7W2lWYjKMxRW1Q5nh1GwhgnqilvVgXbJ8KtkSCh3i7cxrHzefov
 O+xCscx/l35nQbKifkoW/aJQwMtIUmPz5BxoKQcZUql+jRB4L4TeQa2z2Yu8h8u+VhNq
 yJcVVNApCTsmOwFyar3Nrui/jODAtPl5lNTr4eIcPfRakt+wAzm9DJ+e2lt9xuuu5Ypg
 m9o+mtOmYACJ17RT7tt87N0Q/Hz4ZfRvsufZpzS8skWZcvJHQNZt3b8/+67I3o8i9F2y
 PlNE4OP2l9zcrvk4HDsoOqNahY+soNus1/iBHVIYxQA+KR4hFDuu4okSbZfDIb9g261I
 43mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZK2sCc0LVeILJIcSjSFvo/+6Nag3nmcw2niS7MjL9pk=;
 b=apRbn/+0bF+dUi9ICeJ+PHcf/Rb/xQY7x376fy5/pcEmrh63VacqGBxbW/3ZopqxYk
 PBTaWCZAd2Y2c82V9hKnY+GIIiVlrVSnCuCdtOHjfNr9yVk+6/gp96ieMdtdwXtMr/zz
 7XQN7YhDXO5yjgCaN9irw7DZYQPJWarUip+1IFONba35qoqT8irpyKdqGTVb/ZGto4XQ
 NE9Q2088KnUFEdAIZVXqJSoj2w98NYuqvTFx8ScpxDw//UfjruFi6BSDCNR5XcuPkImY
 r7wvzPJQKk0ofNa5AD3nrDZq/RzRAUdNSQvYTSJ05LBFM/hRTUUxg+3MGH//DWu3wcVw
 sa2A==
X-Gm-Message-State: APjAAAX8DYwibu3e0/Wn3AY5BQXaBbRML4TgOvnxuJJcGVYH5Uj4SS6p
 tjVfVGPYZ1xKIjGnsU7kZv0=
X-Google-Smtp-Source: APXvYqyTemc/FWjKdm29DImmjDESmjkYF2U0EP9wwKKCmUQjHADNu/eEOJjURdO74K3fMt7mZBGrRA==
X-Received: by 2002:a63:d450:: with SMTP id i16mr8226993pgj.126.1570678808149; 
 Wed, 09 Oct 2019 20:40:08 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id k95sm3517741pje.10.2019.10.09.20.40.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 20:40:07 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Fix style and formatting issues in rtw_mlme.c
Date: Thu, 10 Oct 2019 06:39:20 +0300
Message-Id: <cover.1570678371.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchest addresses multiple style and formatting issues in the
file drivers/staging/rtl8723bs/core/rtw_mlme.c.
These issues are all reported by checkpatch.pl

Wambui Karuga (4):
  staging: rtl8723bs: Remove comparisons to NULL in conditionals
  staging: rtl8723bs: Remove unnecessary braces for single statements
  staging: rtl8723bs: Remove comparisons to booleans in conditionals.
  staging: rtl8723bs: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 157 +++++++---------------
 1 file changed, 48 insertions(+), 109 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
