Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A1CE45F3
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 10:42:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80E1287A2F;
	Fri, 25 Oct 2019 08:41:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uj7OS+CC1s9d; Fri, 25 Oct 2019 08:41:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF7F287586;
	Fri, 25 Oct 2019 08:41:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B102B1BF2B7
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD54886A54
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ddPZA_sUr5AZ for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 08:41:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00727845C7
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 08:41:32 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id c22so1128619wmd.1
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 01:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pB5Vmazmyui8UFN7n2gSi6RDD7oORESQFbcg/UEmHqQ=;
 b=u2bvvsNmzlIQo/BhYzV8N7jRYOaa083mvkVrh18oUzQ9YD4jk/TVv/yQ05nlihkEVI
 7sJgGePBeG2AyJwygBn4/U3vNeUoXTcrP6jVYVGKwdWC2/J0ZJEebuMR+wxFUujtA3b2
 tWaNd0oGaWdKqwobcELT2S1ajpBX/uSkvJqdTs9JwT4NsF5s/jTpV6FtpC0zG4h5LveC
 u3DhqZMBR7eJ6+IpkIVSO//UxzXd0XwhCQMOesSQXYyVQQGTA3uxGSEiKFnNLNCB5LFh
 33xxBKZ8a7WTvHWxbMlRBJlFsc42tExT2Aj/65HzQay+1IP4c69ZgSbuw7QCaXN7vaWw
 HXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pB5Vmazmyui8UFN7n2gSi6RDD7oORESQFbcg/UEmHqQ=;
 b=FT541SE1OpGJxC3tcU0A//gkaXNCUE10WCR6pSOlxMORUQqIwlcqOeQUVvvAg2NOxj
 aTRVx6F0l3KccSvF45QYf+QtxKcPFlWc5EQSBuM9JsBhT25d4gIktxRZAK2MQG2YPu2j
 e0LP8LJ8MFGEywCssvDvXryQKZD+/zYvJK508g81tA2lSPLXk2hIdJhndnCqWNWIt4NN
 5ubH1mIjBFl3jSS91CZQIjn95ols/grj/U0h3IELcNLb1OBF+RdLuLGVvlcFNWMd5R88
 4PfjsPRU0eQ3tExXu54dr7C7eAo3qe3yhSu3ZKKgJGN5Mx1WF16klZTjkSEwEzLL7hef
 DwJA==
X-Gm-Message-State: APjAAAUVzhfdQQ6LfD8mD5qBIA4Q53zHbA+A6HQRT+BM5ScvdmvkdWi5
 0HcfMBeRZRtxnZloRhywo5s=
X-Google-Smtp-Source: APXvYqz4u8PWUKy8PVjENfu+3OgQVODbNcpL5GIjI1VIL7CrZ1V0rAntC7Fm2re4OtFfkh3YzmI1qA==
X-Received: by 2002:a1c:f00a:: with SMTP id a10mr2470683wmb.89.1571992891382; 
 Fri, 25 Oct 2019 01:41:31 -0700 (PDT)
Received: from meriadoc.middleearth ([80.2.21.148])
 by smtp.gmail.com with ESMTPSA id 200sm2257986wme.32.2019.10.25.01.41.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:41:30 -0700 (PDT)
From: Tim Collier <osdevtc@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 0/5] staging: wlang-ng: coding style changes/cleanups
Date: Fri, 25 Oct 2019 09:41:21 +0100
Message-Id: <20191025084126.9181-1-osdevtc@gmail.com>
X-Mailer: git-send-email 2.21.0
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

Remove unnecessary casts from void* to structure pointer.

Fix compilation with DEBUG_USB macro defined.

Remove unused field from usb ctlx structure.

Formatting changes suggested by checkpatch.

Tim Collier (5):
  staging: wlan-ng: remove unnecessary casts from prism2usb.c
  staging: wlan-ng: shorten lines over 80 characters in hfa384x.h
  staging: wlan-ng: correct parameter alignment in hfa384x.h
  staging: wlan-ng: fix compilation for USB debugging
  staging: wlan-ng: remove unused field from struct hfa384x_usbctlx

 drivers/staging/wlan-ng/hfa384x.h     | 18 +++++++++++-------
 drivers/staging/wlan-ng/hfa384x_usb.c |  2 --
 drivers/staging/wlan-ng/prism2usb.c   |  6 +++---
 3 files changed, 14 insertions(+), 12 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
