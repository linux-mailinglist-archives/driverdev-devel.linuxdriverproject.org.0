Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0780F1D707B
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 07:47:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35DB1878CA;
	Mon, 18 May 2020 05:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXunbCGSAb7C; Mon, 18 May 2020 05:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CEFB87857;
	Mon, 18 May 2020 05:47:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35B9B1BF3DE
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 05:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A86D204E1
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 05:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I65BEf3kh0+d for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 05:47:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 45404204B4
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 05:47:33 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id 50so10187953wrc.11
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 22:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=IgUxf8/whiEMr3BbVOGT5V0QZ7sOsie1bVJvZSf8S14=;
 b=O+z/4M4S6qmhnbqAb+zfbpEol9IeVhqsvhikRdXudQm4xCbogglWu/OD2xrrPDwY/N
 8DB0qC444Pv1XDnT6It2lKVeP3xGQAsKNiSKkEzuYLvLaLrA0pM1akbqWt4FchYrB9mg
 TA3/wR40rVRaFom4pNGPKiCa1dBH1auX8uv2e4VVyfVWOZ0tOeaazdBtL6Yjhisb8nRG
 nC4YJTqrtKifzXFlDhWlpQTcSM/Edi1Lrb2VRYFN8pgUphXsnfczE7y6dNd9VLu1Ev63
 5zcU/7L6G1pFIBtQkWs9pg/hIEXZZzhio4PsrgmYeHy2Be29vU+IG+QGAbervEMouGxX
 7NNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=IgUxf8/whiEMr3BbVOGT5V0QZ7sOsie1bVJvZSf8S14=;
 b=FtNgYiJqIydzEF1lPCZPZgMpSLN4K/C81F0UjWfV/DT//intdhmo8Pg6lz2JtC9MC3
 Isimu9LHnbHBX18nzCt8nwn189+Hg5cfEZ9XjMppYtWR7mLQdQWJw76DX2RUOXlsg9HV
 LvBTWi95Z71tDwLQaB6btGTCym9rulodGXu/6BQe3HjkDv8/isInbbFO2MnJHAcd9bnZ
 ZbHJYhEVXhmgAu+I5WRCm5JNnU23FstHAIYl9Ua08Vpa45qVbeGls945DhVMHZo+EU7O
 NbyB7c9ISAukGBCLVrzVrQarvQ5gyvp3a5fzOR+GxKkT2FcczjyUhj5fXU20iFM0SaZ0
 0ZJw==
X-Gm-Message-State: AOAM531ALOyI1kaWuvXOyXJRuGOcm+FgB6Q3mW8wurBLHEtGoWFbxwYh
 CXfLfZodlCtCb5P+cHvccQ8=
X-Google-Smtp-Source: ABdhPJznH4GEoq8J2yvBT47OK6fWcYlu8U6hIGVu3x3TdjVPDYhkgjPwNSUbUVmPVWB6bHCSrtpVTw==
X-Received: by 2002:a5d:5261:: with SMTP id l1mr17689909wrc.24.1589780851623; 
 Sun, 17 May 2020 22:47:31 -0700 (PDT)
Received: from dinux ([41.68.129.21])
 by smtp.gmail.com with ESMTPSA id d1sm15511374wrc.26.2020.05.17.22.47.30
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Sun, 17 May 2020 22:47:31 -0700 (PDT)
Date: Mon, 18 May 2020 07:47:29 +0200
From: Mohamed Dawod <mhm.dawod@gmail.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: wfx: Typo fix
Message-ID: <20200518054729.GA12362@dinux>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Fixing some typo errors in traces.h file

Signed-off-by: Mohamed Dawod <mhm.dawod@gmail.com>
---
 drivers/staging/wfx/traces.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/traces.h b/drivers/staging/wfx/traces.h
index bb9f7e9..80e131c 100644
--- a/drivers/staging/wfx/traces.h
+++ b/drivers/staging/wfx/traces.h
@@ -32,16 +32,16 @@
  *             xxx_name(XXX)       \
  *             ...
  *
- *   3. Instanciate that list_names:
+ *   3. Instantiate that list_names:
  *
  *          list_names
  *
- *   4. Redefine xxx_name() as a entry of array for __print_symbolic()
+ *   4. Redefine xxx_name() as an entry of array for __print_symbolic()
  *
  *          #undef xxx_name
  *          #define xxx_name(msg) { msg, #msg },
  *
- *   5. list_name can now nearlu be used with __print_symbolic() but,
+ *   5. list_name can now nearly be used with __print_symbolic() but,
  *      __print_symbolic() dislike last comma of list. So we define a new list
  *      with a dummy element:
  *
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
