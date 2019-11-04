Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29050EE4B9
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 17:34:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E33A8AB2C;
	Mon,  4 Nov 2019 16:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYQjlXerFaCb; Mon,  4 Nov 2019 16:34:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A03118A792;
	Mon,  4 Nov 2019 16:34:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 340971BF4D6
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E41A85B95
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wjfoWeHTDaz for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 16:34:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A842852C7
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 16:34:24 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id a11so17838568wra.6
 for <devel@driverdev.osuosl.org>; Mon, 04 Nov 2019 08:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JFkDbKsSeI6+K0jBeMW0GZTEnXuZ3ZSW0WVBKac1tL0=;
 b=fHz/KuqTSjH1izmh/ecYcpUWqeTHp/VgGOXvyKCgSKmsswFECT92U4eKMGjaGAy+OT
 /tc9SGYjnxdtRNm2HJWQRlncZ1OC6fiIgewfXPUui7RtjX7JdHFlyAD49OXwpUZpHQOk
 oKzQl6uS7XOdjODe5L1F5F9IHfev2jx7af3Vk2RLk9GwAz8NpLOBOvT5cU/FFdGPDXRX
 JXxx1+3IFgsEbv0SddcXvfxU9PQVT1dNWZvjPUXMZ4c79QFCTVmYA8Zj13B0EZHSgDd9
 i+TUaElLH7kHRSALqMTdd8huDBv6X6bZvajsUFWdxsdpD+qhETk3e8xofis9JSLksRoG
 bQsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JFkDbKsSeI6+K0jBeMW0GZTEnXuZ3ZSW0WVBKac1tL0=;
 b=jKK91a57tdtowODT4NyzyNBpgtj6WaJXVAzoYNvgKyXzViy/z6FaPnvXyODu2B9ZA4
 TL+dHMeY40yQcMPIvHnS8GvF9sIZhGC3a1JwI+US5cUC+/TxlVfLlBEpjLdIEpeflpRw
 Q7xH7kz3H5ydrqieeCT+3JIT3mFFcOnvRpUulXcdzpZnBhcDBSkkzNfvU0eqsgy90BKl
 F2wUW/YhNKx8x6KOuFDbPjTQSKQ21NgWR285Cy6WUSIJrIrqcOtelHNHyI48F/lyGEAh
 FbSRxr6r6TuByu8RQqsfHsHI5De9llpnh6AM7U1yfeBH1Hn0FgsGFepeDRgPL6aeK97K
 A86g==
X-Gm-Message-State: APjAAAUCqKmgCAO/btMoyERrOFJ44Y7Lwcwyo0XiVTM7lOxbLDkvsSYO
 RoAICEwUORzHI1uogGLSnA==
X-Google-Smtp-Source: APXvYqwER7eASKzqK/tmsjOMIJJXcnS/K0BnACQLnfZ/F7fsD/zr+ZXQ8+brh4pdwMcZEMoVpzdIBQ==
X-Received: by 2002:adf:f4c9:: with SMTP id h9mr19343427wrp.354.1572885262526; 
 Mon, 04 Nov 2019 08:34:22 -0800 (PST)
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com.
 [79.73.36.243]) by smtp.googlemail.com with ESMTPSA id
 h124sm18573509wmf.30.2019.11.04.08.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 08:34:22 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi: rewrite macro function with GNU extension
 typeof
Date: Mon,  4 Nov 2019 16:33:31 +0000
Message-Id: <20191104163331.68173-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, abbotti@mev.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rewrite macro function with the GNU extension typeof
to remove a possible side-effects of MACRO argument reuse "x".
 - Problem could rise if arguments have different types
and different use though.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 - had no full commit log message, with changes not intended to be in the patch 
v2 - remove some changes not intended to be in this driver
     include note of a potential problem
 drivers/staging/comedi/comedi.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index 09a940066c0e..a57691a2e8d8 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
 
 /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
 
-#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
-#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
+#define NI_USUAL_PFI_SELECT(x)\
+	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
+#define NI_USUAL_RTSI_SELECT(x)\
+	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
 
 /*
  * mode bits for NI general-purpose counters, set with
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
