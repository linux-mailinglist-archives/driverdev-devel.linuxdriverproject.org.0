Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A70620BF3C
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 09:09:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0DFC421517;
	Sat, 27 Jun 2020 07:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Te7FsXLonQNJ; Sat, 27 Jun 2020 07:09:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C8849204A7;
	Sat, 27 Jun 2020 07:09:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65E611BF31D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 51D7E204CD
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cC2k6jAHF6vi for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 07:09:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7FDEC204A7
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:09:19 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id e4so1901129oib.1
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 00:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IRWxMxlqWvctwl99wxccnqWWb3ENVUA6Lf341j4JzdE=;
 b=i0jiET3+vZO/UFJlzvko7rrTS7QmWEyKiVb3ggUYOS/7e0IjEJzlzOnOZQNyLuowqO
 /b2qX+vjeZeDwvEH5keqR8JJJRVjME6vd0LHDtfSmDsVeomQpuZAiYT4EfCNRTa2SQHb
 3MdeP0EJZ5FWGwkT0YcN8ucODDkKTYtFt0oZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IRWxMxlqWvctwl99wxccnqWWb3ENVUA6Lf341j4JzdE=;
 b=texA26fEpohl8YU6qsTKh6dBCAjbxBz1BFh3yc97JyzePMWOJ9BHmJCb5010jXN1Nj
 TAqvfe72tqvQDLdkjHWBvrouT2BPuaovBev9CH9k4AZkAajVp5nmV0UN533YjzON/2on
 f6pKoI8ax8vJ7Ao20frAh+Xro3YyEDGAUPB0iv3/RIwvUZQo6eZPu4HB7VooG/6VSsdu
 WhKQEYl1Uxsfq9b3bjXs9DJg+I1DzLBYL2yew+EHM7YnRa/ZQmg0K137+mBvdTpHpP4g
 ufF+laowiiVV56TNC5HLnZNdXv2AmeOwc0B+CzVTp/DpMbS9O+KWxpui76xlTfJJ8+hU
 obFg==
X-Gm-Message-State: AOAM53007ewSeJ+MA8B9LNMQ08cWB++m1Mqp/bW/PGmgG7B9+XmZg9Q+
 hWgO1C6hyQwCv8jWkOgNnsKdWyWu53XYb28u
X-Google-Smtp-Source: ABdhPJxpdGUdXoc2rz4cG0DRuW8Y+uArwwEZjCgqEOXBTcgjaJufBTwP5w8TUOFoJoJC34+HTXYVOg==
X-Received: by 2002:a17:90a:bf14:: with SMTP id
 c20mr7337079pjs.228.1593241414364; 
 Sat, 27 Jun 2020 00:03:34 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id u4sm28133269pfl.102.2020.06.27.00.03.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 00:03:33 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] usb: cdns3: gadget: Replace trace_printk by dev_dbg
Date: Sat, 27 Jun 2020 15:03:04 +0800
Message-Id: <20200627070307.516803-2-drinkcat@chromium.org>
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
call with dev_dbg.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

Unclear why a trace_printk was used in the first place, it's
possible that some rate-limiting is necessary here.

 drivers/usb/cdns3/gadget.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/cdns3/gadget.c b/drivers/usb/cdns3/gadget.c
index 5e24c2e57c0d8c8..c303ab7c62d1651 100644
--- a/drivers/usb/cdns3/gadget.c
+++ b/drivers/usb/cdns3/gadget.c
@@ -421,7 +421,7 @@ static int cdns3_start_all_request(struct cdns3_device *priv_dev,
 		if ((priv_req->flags & REQUEST_INTERNAL) ||
 		    (priv_ep->flags & EP_TDLCHK_EN) ||
 			priv_ep->use_streams) {
-			trace_printk("Blocking external request\n");
+			dev_dbg(priv_dev->dev, "Blocking external request\n");
 			return ret;
 		}
 	}
-- 
2.27.0.212.ge8ba1cc988-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
