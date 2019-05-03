Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD2F1355C
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 00:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3412830FF7;
	Fri,  3 May 2019 22:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xio1kmNPit41; Fri,  3 May 2019 22:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC0162305A;
	Fri,  3 May 2019 22:15:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 098111BF23C
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0679C86A53
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wgn4e7fluDvl for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 22:15:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7249A86A27
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 22:15:39 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id d13so8543620qth.5
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 15:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SAG93eFHh+qaETzoOcFQNdt8rlclJfMfJCEB5tyPneU=;
 b=cxRMJufioKVdvfnJKfWHBXy6aUljGfxrLWnsauz+050JKcWB0haJPWdy0XJ3iBvW+Y
 svO5sSi08Sbc+rOJkObJqDwPph9vSPQoyflUwSt0ZOcbeJH+atKZxoZ98zBxY2qN5IOv
 hucZoLfhj7xtykRJhiwXWK0vJ/5+0weq/mTzoE3Ge591qXyOnsAZVAjWOmD+bN7/2Edf
 UmPQZ2hQLydG6WVM6AoQUCqxxX0MAMCzsLSVBTjh9qgRM5CEjzfi1eWBTauTms96wQDO
 QmL0grDYx7346Ad4PNAtBT/X4o4OIyE5ifb0K7zHfKV3qGvKn280hfiVDyQ5Sz7TWpy1
 j4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SAG93eFHh+qaETzoOcFQNdt8rlclJfMfJCEB5tyPneU=;
 b=egvDoxNTSmaNnMw0Z58VZO41zLwS+pgP6+L5dQZusp+VmBt0Wg5WPZgnoDRuA+kvwZ
 6czfvQLA1rMnJbyakVhdsZNa06YFLz28BUhXURCnKoK1hqWuSbFbrCN2MKkHTs/nSJUw
 2j+M/qocSY0f8I6lozVrxDfQy7tA9FRIt85mpgWfckxKYwcNF7J5+imQBGF865iHCJWx
 +/f4i6B199IinTidz0snW0DS/KOUmoMk1mV4gq57euKthq0Pb/QDE0F47FVxlygTost1
 ZWVvLlTHBSC6rwsMb5Ds51r2ExdMm5JH2pXOuiwQEVwCAX8TREelSgZwnscNdmf/Bfay
 4tTw==
X-Gm-Message-State: APjAAAUPk1DDN3t8OQ/VhQeDTF3bbcS4p4H7cg+LpHIEMWO5xzJDDQlX
 sEmHWHNclkE5GmYKYijsSSQ=
X-Google-Smtp-Source: APXvYqwN3xXPr46LsBvXQoeM3xNHTgtquMHHKh1QvdRhT3+X053Z7iIDcWI/TfvRozWj41FcfVP6LA==
X-Received: by 2002:a0c:92af:: with SMTP id b44mr4193122qvb.141.1556921738622; 
 Fri, 03 May 2019 15:15:38 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id t26sm1807490qkm.82.2019.05.03.15.15.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 03 May 2019 15:15:37 -0700 (PDT)
Date: Fri, 3 May 2019 19:15:25 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH 3/4] staging: iio: ad7150: simplify i2c SMBus return treatment
Message-ID: <18725f7ddc3ac42b1c781b1848b05fabd4bd8320.1556919363.git.melissa.srw@gmail.com>
References: <cover.1556919363.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1556919363.git.melissa.srw@gmail.com>
User-Agent: NeoMutt/20180716
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since i2c_smbus_write_byte_data returns no-positive value, this commit
making the treatment of its return value less verbose.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index 4ba46fb6ac02..3a4572a9e5ec 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -201,16 +201,12 @@ static int ad7150_write_event_params(struct iio_dev *indio_dev,
 	ret = i2c_smbus_write_byte_data(chip->client,
 					ad7150_addresses[chan][4],
 					sens);
-	if (ret < 0)
+	if (ret)
 		return ret;
-
-	ret = i2c_smbus_write_byte_data(chip->client,
+	else
+		return i2c_smbus_write_byte_data(chip->client,
 					ad7150_addresses[chan][5],
 					timeout);
-	if (ret < 0)
-		return ret;
-
-	return 0;
 }
 
 static int ad7150_write_event_config(struct iio_dev *indio_dev,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
