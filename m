Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D73CE937F
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 00:22:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3DBAB21579;
	Tue, 29 Oct 2019 23:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x62iadAEsncA; Tue, 29 Oct 2019 23:22:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ACF3C20764;
	Tue, 29 Oct 2019 23:22:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD6E41BF31C
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 23:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CA10485308
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 23:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pgc78B8uZ3Kl for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 23:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 487FD847CD
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 23:22:18 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id y39so686963qty.0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 16:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/RIHrM2T5t2yjqxj2JPTS71DBT+0RqAHHijTzNDzZvQ=;
 b=oVu5mhpbwaYDhSZVWLJHva8w1r3fWnI9tbf3bI81Z4kUpGcBcb2LQwxgA6rQyaaywy
 EDQZOJBJcBKsDP3+uO4LLxe+AJF9/wVa3YgYytzy/IOYHwXeAIrHkoOp+sizz3UyROHV
 84hjPfNn2mik6aS9KauqQptgafjsGlQVFQPL28vR+jYxSWLy0kkwodlH9evs0l69znCj
 ya1lmfDMy9OnxY0ecCnUtlUZaCfVcU0iKHC7XToeqpR32y1271NCKeA2+NVwK9r8Z9Va
 Jx8bR9zQ4AsSLF6bR4tzex2O8jvJjY+avCUTU6ELAV3OVxzap4FhFChnHUyeRy6fV+6w
 r9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/RIHrM2T5t2yjqxj2JPTS71DBT+0RqAHHijTzNDzZvQ=;
 b=k4uIS6qdO3SuVoXZsZqZOzm6u5APvASvff3GAQhOIDhIsbur6FjEmPL/XksjiX5PHW
 yoM/AESzUNZRV77cZlgH2T3O9fU5rS2D3G9hnAkrM2x/htJ5IXS8XcgOLg00keaNJN0E
 KbqOgZFqZMonsF9ooAX5mC150xvnZRBDIgxCXDTKGWzXwg3N6+Hii4CFnd1oSFf7tXxb
 WNZpJ81Pp7dyhzOZmwSDR/jGTUKQsl2WsEvQBYgKxVJbgHPVS+DLTmNj7k1+ZEnV9X4l
 i9EEkWw1HMNgCIm71vJZU2qCSZM6JufL51i4uKDFW7pwhBAM+qzq1eURjs/10LnhmxXX
 3lNA==
X-Gm-Message-State: APjAAAXkbsA+USEHSho5aW/d+mZ+C+Q4UyM6Ni2JcXieN5MbUyppz1Gd
 uFlEs4D0YTl1LUQp3lAIwW8=
X-Google-Smtp-Source: APXvYqyVtKZdQakEpy7jyH1XhEBn63IFkrC8JPdYR9oGo7S3PD9dTfWcVsiu9qgGrB00b2JedWkISg==
X-Received: by 2002:ac8:6146:: with SMTP id d6mr1980022qtm.271.1572391337209; 
 Tue, 29 Oct 2019 16:22:17 -0700 (PDT)
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br.
 [177.220.85.136])
 by smtp.gmail.com with ESMTPSA id a18sm633940qkc.2.2019.10.29.16.22.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 16:22:16 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH 0/2] staging: sm750fb: Fixing codestyle error 
Date: Tue, 29 Oct 2019 20:22:05 -0300
Message-Id: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixing typo and usage of spaces/tabs in file sm750_accel.c

Gabriela Bittencourt (2):
  staging: sm750fb: Fix typo in comment
  staging: sm750fb: Replace multiple spaces with tabs when it suits

 drivers/staging/sm750fb/sm750_accel.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
