Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E851A2719C4
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 06:14:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3AA5686FFF;
	Mon, 21 Sep 2020 04:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UPyw+rvVum6Q; Mon, 21 Sep 2020 04:14:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EBF7864EF;
	Mon, 21 Sep 2020 04:14:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B48491BF471
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 04:14:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B0F2E86888
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 04:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pu4Plt20Es1c for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 04:14:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 580428679C
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 04:14:02 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id 34so7885987pgo.13
 for <devel@driverdev.osuosl.org>; Sun, 20 Sep 2020 21:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bwg8LWIc3FOEv4vf98tTvij6EQc2P2olbL/FuLZBLvU=;
 b=DalDOMV9eAvziC3M4KHRnCraZ01q5IQDSS6EJzA6aehQh6lYde84GeEsi7UdhUORg4
 kMVHCFhWw08+QdHcpZySXUuUob0g6DwwPEqQgwI8cSY7/jjw8awbaRDVhxM0tJDHrhyb
 1d7KUQDNZs9zsJKSLo9eKMVF9I3ZxaROklmGZpW4z4wwyZFQTGZtUCw/uSWM0wyfMHVn
 I70ST1zsW0C8ij7KXIGB0jU579/PMA0/nU2Z5st5EHr6/loyvVl961yNBXd/jLatMbb4
 EjWM8voSWt36AnxPWw+mMqExGaOtHm4xO/pKUe45bi1nJgb2rN56nBYxmZoHbx4pw0CL
 D7MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bwg8LWIc3FOEv4vf98tTvij6EQc2P2olbL/FuLZBLvU=;
 b=WZNOpG/vS/X9bJg9QmY+Ex42wZMLcd2I9sKC1H/gFRv64GH0dq/8AYp7mzUy0hpFEc
 Un4qUjyYJh37bWdM7QMFXuL9tZTYnb4y1rYs/AzYNYzKyvDDG9NuYkQWeSuhd6H50iEa
 b5IInX47A8rjFzbXwjMKYF1w+pddsiA1yxg+vLZ9TfgZf111vlpaALU5sKUUn4sSdMpO
 /tHQM2eIUxB4D3Ny835fHiGXsckAFYrdErK0J5dNlVLh8zOg1UdsFsJLLCm56j4LW+aD
 oz7jnlkxFWkk2xyK0NtOW98LTY698ikgbPWqvyBDEi9snQ6bXNmVQ1jbYGdVAggcen09
 wm/w==
X-Gm-Message-State: AOAM531vxT/Euug261p2/ssRcyTLH+op7uszw4CquT/B0/MBGSWJ/a4Y
 mApCpnHGRRM8Ld7Y+E/L5ig=
X-Google-Smtp-Source: ABdhPJwFBcq9+/Sf4/rZ/Q8b9BNuG/dAQ7ENb+cDMqQ53zomm7Sx8ktf1dDzvf7tQTRJF+aFwNFWeg==
X-Received: by 2002:a62:be0f:0:b029:142:2501:39f0 with SMTP id
 l15-20020a62be0f0000b0290142250139f0mr26132983pff.63.1600661641883; 
 Sun, 20 Sep 2020 21:14:01 -0700 (PDT)
Received: from james-Aspire-E5-575G.hsd1.wa.comcast.net
 (c-71-231-36-179.hsd1.wa.comcast.net. [71.231.36.179])
 by smtp.googlemail.com with ESMTPSA id u14sm10281689pfm.80.2020.09.20.21.14.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Sep 2020 21:14:01 -0700 (PDT)
From: James Browning <jamesbrowning137@gmail.com>
To: 
Subject: [PATCH 1/2] drivers:staging:comedi:comedi.h Fixed typo in comment
Date: Sun, 20 Sep 2020 21:13:39 -0700
Message-Id: <20200921041341.7210-1-jamesbrowning137@gmail.com>
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

Removed repeated "the".

Signed-off-by: James Browning <jamesbrowning137@gmail.com>
---
 drivers/staging/comedi/comedi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index 09a940066c0e..3bc74bea830d 100644
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
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
