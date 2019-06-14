Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61864643F
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 18:33:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 561A0884EF;
	Fri, 14 Jun 2019 16:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SW1wbPxDug4L; Fri, 14 Jun 2019 16:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E460088419;
	Fri, 14 Jun 2019 16:33:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C11E81BF59F
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE0B4884D2
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXCQt18Dfypt for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 16:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8A06688419
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 16:33:03 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id n4so3215847wrs.3
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 09:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=G8wdXxU4tFwUoWKvXvo7dS/CRtSW8huyMcBERdfUB8k=;
 b=Yl+QfPgKpr+w0DEtuQQNPcyl2qeLjOBYDIKp7qPHRYTQ2Liqly1IWx6TPG9HZGj5C/
 kzHtRmn3uQ8RfnpiHyhiBAvq9b+p5U01g64vn3NOHFIIWqC75V9gfDdJm+DsV7tRgM++
 StaP/9lRzyvgwUGCHgDrTsvEWx1SHHg9+SD8y1LA5acWvJj+cTyGvZVtsPLw0ty78FTF
 /GcJGyxhLkQLXyX/53RIz61bmYj3W6MSNaihi4DbW5RAG+UFGzcPaQjBct4quzL4fzgr
 Qdj50s+hsQvSM9jXCyxoWxtLvyUSr6mhifh7cn9uxsJPJQ3CZ7IznZCSejysmb9FVAyS
 0Gtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G8wdXxU4tFwUoWKvXvo7dS/CRtSW8huyMcBERdfUB8k=;
 b=nuJaxjSreNNehiCEO7hDzndJqjPUcmFZ78O4N0BL/140BE5eH4onGNjGYWpbjtiRIG
 XLQeBBpCOW6WHmYP3KIHL2eM++VfvVoistg6GtuFglpAqPrMfnvkhJ/hJfjBQFbtwLiP
 xzi8eLAIAqtL0g3PAixPn7EVpj7m0T+2GZnLcTah+2kQuQDyRfcUCo7U8ZJa8XpBGL2x
 41gsxB3qQCnfFOmYHFUlmrOj6IVpZEZ4gmJ/nXxdluFemWe4wlZ4q0JbUogQOI5la/HL
 Ojk9X5tLogbMmhsTWCGN+IUK4hr5SiY8WVhl5/QF1I93J/k0vC+CGqpnuH28XQ7YbA8L
 0oPA==
X-Gm-Message-State: APjAAAWDCwEO4NqSZWscNjikWeWDgDpnW3TcQ8K1dTF10RTlbRsSlqdb
 NBuWLp1tkHGJhW/g7BBMVAQ=
X-Google-Smtp-Source: APXvYqwgLGKA3ee1Gvw/tmD9xSuiS937SeFYyksGqPMuYPhYWpwerSjlNLOWmZxpMK+aJLOYh/ebOQ==
X-Received: by 2002:a5d:5491:: with SMTP id h17mr6626926wrv.182.1560529982167; 
 Fri, 14 Jun 2019 09:33:02 -0700 (PDT)
Received: from smtp.gmail.com (1.77.115.89.rev.vodafone.pt. [89.115.77.1])
 by smtp.gmail.com with ESMTPSA id d10sm5126806wrp.74.2019.06.14.09.33.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:33:01 -0700 (PDT)
Date: Fri, 14 Jun 2019 13:32:54 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH v2 2/3] staging: iio: ad7150: simplify i2c SMBus return
 treatment
Message-ID: <90e8a25eca0825878d55fe0a9e760906b4689035.1560529045.git.melissa.srw@gmail.com>
References: <cover.1560529045.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1560529045.git.melissa.srw@gmail.com>
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
 drivers/staging/iio/cdc/ad7150.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index 091aa33589d7..7d56f10a19ed 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -202,16 +202,11 @@ static int ad7150_write_event_params(struct iio_dev *indio_dev,
 	ret = i2c_smbus_write_byte_data(chip->client,
 					ad7150_addresses[chan][4],
 					sens);
-	if (ret < 0)
+	if (ret)
 		return ret;
-
-	ret = i2c_smbus_write_byte_data(chip->client,
+	return i2c_smbus_write_byte_data(chip->client,
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
