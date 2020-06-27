Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D92F420BF28
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 09:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D88C88479;
	Sat, 27 Jun 2020 07:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xkbwmP8hHZEi; Sat, 27 Jun 2020 07:03:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF9E287CB9;
	Sat, 27 Jun 2020 07:03:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7ED2D1BF418
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:03:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D5CC204A7
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8gJUoOU+1wAT for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 07:03:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A90320444
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:03:42 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id l63so5963808pge.12
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 00:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GEZGJe51GehcxNBEXCjeuCvNUVTUbWGMU9LfdoST7kI=;
 b=cjXMwayPxAVThNdqSwq9gh/XXADf8DxfXH5Am4oMd6Gzkk3HKiuVeQBOjv3pA4go09
 GYrHH5eUSlGtVrxnx0CaKolfLkX8IWfanhhoBcg935mVJ6DKtduNPeSotSqrdDCloxin
 OJC8MRcaDRimzPxiRnmKyq3boKDUYPgFPV61o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GEZGJe51GehcxNBEXCjeuCvNUVTUbWGMU9LfdoST7kI=;
 b=njw3fxXW0Q5uX9KiaZDGwrLlNBPVupUh2R5PY3znWoqJaHggkuJm9NkCsVkLUVR5MB
 dSHp6ylYvSPV+GmVStDkS5VeLiWoFyjsMhm09ufrLEaPn+vytjHFwC4EiDvASxnr4A1F
 cl+I8uMy3KX2yAcQOQRduiC4zuz2NuQu1Djo7iDzc5wmnZFhETQ9IXBGQ78S8kiMCUR/
 Q1tl7zv6vOmfDe5TWeqSoJPFqZjSCpBzd12IEmr6Pt9TQh2imQRIzSkT8a6POnEUqojd
 9BI6M7H+8EPiOyV4pq1qne9HDmUNNRAOmF/Obmp0FSYCopuoLN0sFJulP1pPauSdKU8k
 K9jw==
X-Gm-Message-State: AOAM531RsfBR/i/BC3cji+JuZse85a4OsLwzxJivgsnkwDNXr29aliWa
 kN/EwDUjCi4aBzhh0aarsezQtQ==
X-Google-Smtp-Source: ABdhPJzEaHy/nTKowjvtlIgATfBjZFG3DWxUouu/iNdEBoW9SD1bHdr7RU6EhcYh7ZY2/EGoj98Wdg==
X-Received: by 2002:aa7:82d5:: with SMTP id f21mr6259533pfn.244.1593241421610; 
 Sat, 27 Jun 2020 00:03:41 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id u4sm28133269pfl.102.2020.06.27.00.03.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 00:03:41 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] media: atomisp: Replace trace_printk by pr_info
Date: Sat, 27 Jun 2020 15:03:05 +0800
Message-Id: <20200627070307.516803-3-drinkcat@chromium.org>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
In-Reply-To: <20200627070307.516803-1-drinkcat@chromium.org>
References: <20200627070307.516803-1-drinkcat@chromium.org>
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
Cc: Peter Chen <peter.chen@nxp.com>,
 "Guilherme G . Piccoli" <gpiccoli@canonical.com>,
 Rafael Aquini <aquini@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Howells <dhowells@redhat.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Will Deacon <will@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Nicolas Boichat <drinkcat@chromium.org>, Jayshri Pawar <jpawar@cadence.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andy Gross <agross@kernel.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media@vger.kernel.org, Pawel Laszczak <pawell@cadence.com>,
 Daniel Vetter <daniel@ffwll.ch>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Chao Yu <chao@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Roger Quadros <rogerq@ti.com>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>, Divya Indi <divya.indi@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

trace_printk should not be used in production code, replace it
call with pr_info.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---
 drivers/staging/media/atomisp/pci/hmm/hmm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm.c b/drivers/staging/media/atomisp/pci/hmm/hmm.c
index 42fef17798622f1..2bd39b4939f16d2 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm.c
@@ -735,11 +735,11 @@ ia_css_ptr hmm_host_vaddr_to_hrt_vaddr(const void *ptr)
 
 void hmm_show_mem_stat(const char *func, const int line)
 {
-	trace_printk("tol_cnt=%d usr_size=%d res_size=%d res_cnt=%d sys_size=%d  dyc_thr=%d dyc_size=%d.\n",
-		     hmm_mem_stat.tol_cnt,
-		     hmm_mem_stat.usr_size, hmm_mem_stat.res_size,
-		     hmm_mem_stat.res_cnt, hmm_mem_stat.sys_size,
-		     hmm_mem_stat.dyc_thr, hmm_mem_stat.dyc_size);
+	pr_info("tol_cnt=%d usr_size=%d res_size=%d res_cnt=%d sys_size=%d  dyc_thr=%d dyc_size=%d.\n",
+		hmm_mem_stat.tol_cnt,
+		hmm_mem_stat.usr_size, hmm_mem_stat.res_size,
+		hmm_mem_stat.res_cnt, hmm_mem_stat.sys_size,
+		hmm_mem_stat.dyc_thr, hmm_mem_stat.dyc_size);
 }
 
 void hmm_init_mem_stat(int res_pgnr, int dyc_en, int dyc_pgnr)
-- 
2.27.0.212.ge8ba1cc988-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
