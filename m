Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF031E3D90
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:28:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1AB287DA6;
	Wed, 27 May 2020 09:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tX7peGV4WykA; Wed, 27 May 2020 09:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C0718665D;
	Wed, 27 May 2020 09:28:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 524251BF2EF
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 09:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BD2B86689
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 09:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id raNJlJF4vghT for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:28:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E4D08665D
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 09:28:40 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id h4so2359239wmb.4
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 02:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UOZ4TdRb4/KFLMrC2D7QMXdefrcaEXMwfgRoi1sbd/Q=;
 b=U5jx1ifCmAPQLrF4lQpHeszasidAtNNLotv9zcG99g13vROWxDed5gRCbq3W/BYOkV
 wsgo17Qp0k6IIT4UBTieJqTfddBUNVgmgXBJzATQI/GwCpZy8EKfG93YN/FbljB8L09p
 Y8TNeG+saf3ZWQHfiNHzA5btQaUeBHLpuIPtD1J0xjR7nvALQRWseevgJLuKBKRLeQmn
 MTKDcqbHB6Np4cFdjw4CwyMGmpa2DS0OHtaHKEQZ6i5H3mooYRi0vm1Ko0P8krKDWR/l
 CFLh63JA00OEhnsPf6cBz9GvMvhtFJo3TedTHWPgzXDyrv0R4bWsPT6wqgmNVamP1Lpc
 34OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UOZ4TdRb4/KFLMrC2D7QMXdefrcaEXMwfgRoi1sbd/Q=;
 b=dIx0/W6aZPXTpPy4/2l7bcpk4Q2Oi0ozXfa1FcoJNoXg070Mx88rtlVAJQYuoig2z0
 XgYn5fHVoyXGbZtdPLWvoRE/DqJbMtF/dgl6UVMFoILqPhudE8uSLxzNgQoAHO1X+CWL
 55GQJzbBNTGnw9ZWM9DhIeHefPJIdQfuceYHyApzOz+tcNZPN/vvoXZlnAVGG/9swo6U
 A6+8ep/K7KzLvN9UtdbXmGOnS0eJAF7/OAioc9bWC7olWBVmmxjGmn1XB0lJAnLnruxJ
 0EpgpivJiQhpeypmou2/Cx4tmrkrQ4/Jmi7XxoHopf8FAuaExtM92ll7X55ttd8VUT6U
 W1zQ==
X-Gm-Message-State: AOAM5331vJRfVbAAeVPl0+u8oFEdZk5TgrKgdtd8nvKOtkmykmaBbjOB
 dxhWWh2GMs9YwpYzNEeuo51jzLi6
X-Google-Smtp-Source: ABdhPJynQ6CB0JjJsiR8oJ+WiMDtN2/HN8/BLl9PbHjY1lScggdj2naaoMkU3EHmRRlY6mQNNPLqPQ==
X-Received: by 2002:a7b:cb4e:: with SMTP id v14mr3686418wmj.54.1590571718787; 
 Wed, 27 May 2020 02:28:38 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.0])
 by smtp.gmail.com with ESMTPSA id u3sm2349648wmg.38.2020.05.27.02.28.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 02:28:38 -0700 (PDT)
Subject: [PATCH] staging: vt6656: Fix warning: unused variable vnt_frame_time
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <202005241918.IseLzHqZ%lkp@intel.com>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <41690fb4-fa4d-ffc3-0eb0-2879de2cee1a@gmail.com>
Date: Wed, 27 May 2020 10:28:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <202005241918.IseLzHqZ%lkp@intel.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In commit 3436accadc3f
("staging: vt6656: Move vnt_get_frame_time and vnt_get_phy_field to rxtx")
not quite all of the code was removed.

Remove unused vnt_frame_time variable.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 5530c06ffd40..5dd6b4d2bf20 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -39,10 +39,6 @@ static const u16 vnt_time_stampoff[2][MAX_RATE] = {
 #define DATADUR_B       10
 #define DATADUR_A       11
 
-static const u16 vnt_frame_time[MAX_RATE] = {
-	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
-};
-
 static const u8 vnt_phy_signal[] = {
 	0x00,	/* RATE_1M  */
 	0x01,	/* RATE_2M  */
-- 
2.27.0.rc0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
