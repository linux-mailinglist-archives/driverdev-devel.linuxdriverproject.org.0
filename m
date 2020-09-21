Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF930271A63
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 07:30:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F586868BC;
	Mon, 21 Sep 2020 05:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJk5Q6uBZ9Z7; Mon, 21 Sep 2020 05:30:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D76186891;
	Mon, 21 Sep 2020 05:30:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 963241BF4D5
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 05:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8FB3E86891
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 05:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F9pjcE9cgFRo for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 05:30:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 21C848688C
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 05:30:37 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id a9so6832498pjg.1
 for <devel@driverdev.osuosl.org>; Sun, 20 Sep 2020 22:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Qj9PyCzhSHC6kaHgqz3Zpf6fqZ3au7JN7Je5cZmsugg=;
 b=LuNkfazDZtt3eVNFmfepYHcgt4usFSxYMzkGnDNxzwPJX88lgbHhRVmBuHVAJLalTZ
 SflpKQISWqhiFBtEtxv5lMf1Y2ophHv4pdKKuPUhG3efBZgI2/oEkZ931uRwgh5DW9dE
 44ZHwKnSLeOIB24e+zWDpBNdvtTqiLlTdKlrzdsWMWdL5bwZxoLuBSTQmbyNXDyKEqHs
 SF0XohbekIhTH06mLP1Qn02oO0xk5KHMXid8IqAqH/gZR10L1WFQJrkzj+YI9Z0fPSAb
 sVeNgWU56Joih14uKlDcwdOxeBEFeLxP4fh+Z+2eXWNxUsxH91Si88N6KvUz+Zh3+3qF
 Ncrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Qj9PyCzhSHC6kaHgqz3Zpf6fqZ3au7JN7Je5cZmsugg=;
 b=JhoV2GoQK2RASCgVPX7NhntkK4Uae6WptGdr0kq0f60y3qQhgMxlrqEkXm5mj/+gdL
 HREp8fZpqxTnrZx/Fu+PgQA3CPJgyblMAvT6zQ2MKgWmJ7fBc9Kz2WQxj/NtDkWUqKs5
 RZsLaJY+vnDmgrWEsJfv4YVD8yY+9hqlfAEQevnQsqeX8oNx8j445zF+2IfrKLHQT5A9
 CUx1uph52vmwk2zVtY5qYq1hGy1s8Bj+DGJcVPw14J/8+5ieyWae2Mwvw4QPD6wjosx6
 q6TNOfd4ROQlFyPKE589YZ7WPyKYXzLx5rCGn3itshXv7pJd/i9TG8DyhhFHqFP7CsJM
 v9eg==
X-Gm-Message-State: AOAM531KNSHxCG/Ehj2wtxMphaWpDzjk4GDXTjs9yb2mW7MnJOasoEr9
 87gcnZD8QC5M6ZIdn/vy180=
X-Google-Smtp-Source: ABdhPJztPjU1aIaxAfOPn2XAotl3oNSzV6uLf5VD4H+XhR728IPGnSHAmcPEEP/KwfFLu9iCMwiPEA==
X-Received: by 2002:a17:90a:ec05:: with SMTP id
 l5mr24461707pjy.172.1600666236667; 
 Sun, 20 Sep 2020 22:30:36 -0700 (PDT)
Received: from james-Aspire-E5-575G.hsd1.wa.comcast.net
 (c-71-231-36-179.hsd1.wa.comcast.net. [71.231.36.179])
 by smtp.googlemail.com with ESMTPSA id y6sm9427235pji.1.2020.09.20.22.30.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Sep 2020 22:30:36 -0700 (PDT)
From: James Browning <jamesbrowning137@gmail.com>
To: 
Subject: [PATCH] drivers:staging:comedi:comedi.h: Fixed typos in comments
Date: Sun, 20 Sep 2020 22:30:00 -0700
Message-Id: <20200921053018.64095-1-jamesbrowning137@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, James Browning <jamesbrowning137@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed repeated words "the" and "in"

Signed-off-by: James Browning <jamesbrowning137@gmail.com>
---
 drivers/staging/comedi/comedi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index 09a940066c0e..b5d00a006dbb 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -680,7 +680,7 @@ struct comedi_rangeinfo {
  * value of 1 volt.
  *
  * The only defined flag value is %RF_EXTERNAL (%0x100), indicating that the
- * the range needs to be multiplied by an external reference.
+ * range needs to be multiplied by an external reference.
  */
 struct comedi_krange {
 	int min;
@@ -970,7 +970,7 @@ enum i8254_mode {
  *   major reasons exist why this caused major confusion for users:
  *   1) The register values are _NOT_ in user documentation, but rather in
  *     arcane locations, such as a few register programming manuals that are
- *     increasingly hard to find and the NI MHDDK (comments in in example code).
+ *     increasingly hard to find and the NI MHDDK (comments in example code).
  *     There is no one place to find the various valid values of the registers.
  *   2) The register values are _NOT_ completely consistent.  There is no way to
  *     gain any sense of intuition of which values, or even enums one should use
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
