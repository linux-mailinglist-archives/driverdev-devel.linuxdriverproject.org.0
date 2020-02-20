Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9CD1667B8
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Feb 2020 20:57:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FCA3876F2;
	Thu, 20 Feb 2020 19:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EIhDy94etZkk; Thu, 20 Feb 2020 19:57:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91B91861A2;
	Thu, 20 Feb 2020 19:57:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DF5B1BF36A
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 19:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0B11185B1C
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 19:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mA-fe-GOBBtv for <devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 19:57:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87A1885A54
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 19:57:00 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id z7so2448105pgk.7
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 11:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=nAWUMwqWIY3D/+QdxFiIISW276z/h4/mNno+zWK07qg=;
 b=P2WLVKSxLVE+j1O5y1/8R8pwftnXEN4wmqmnrbX8G62jgG7VL0X9hO/6YJtURSyR0/
 L4HnS2KANSaFhLG6F5VcjMCfHlGJpLiTfVhx5qAL/ihQFtwbJJfzQ5utWx/gdlfWrRw+
 WrcIimideYR1TlCO8Eh9Q0DGDHltWXvV5mmIO3bW9Rz+4iNnwvKOxcEMHzf7zTDsdpmB
 PvbM7Xqmxl5CAzI4NIPn1atiowp9M4dFmnOrHwUnIE9Gsxbp2kSAkjUj8sH9NLopjEs1
 im5CeXti/mz0O+Fld1KX12OS2PwrJ0JdT8qW+vSBWQmAoeNDVr+8/mhkKEeWQWhF44xW
 VW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=nAWUMwqWIY3D/+QdxFiIISW276z/h4/mNno+zWK07qg=;
 b=Q1Hl8rsClJ1O9SIzy8TbGSd7SUltk/DG61EG07qHVDfDzoBrZbdE+YniX3iVVJ8B4V
 qPKHTh5R2jRB4findFLvAZvojMsYqmCekaUCNdt9jV7uT+/iLQuCP4gCI1wlT/ToOFmI
 7ZYzdVef0I4vSRsFVqnLMhT8+/RjljbNpD7nBTRafmaZlo6d02/AU+C12Rm4xLQi842U
 AjGzs91Wa5ldTW/WeIYNnEa2TBsG8XXMkHVeKV2DgSH9LpPyL2fS64SEK4Q9GkoH//Uc
 CnWHBhrUsYxDDuhF8E/lSvtJRBgdq88tMPKaW85zGNpErhIyWN5M4NhiOGefB5WbuGNf
 xksg==
X-Gm-Message-State: APjAAAVmDr3BbM9MeDOd2vk6IDs6IxPtCgCA2dYeUMK2Gp4YyNDMFHj8
 YAPh3LbR8VgbXjwuO15szzkELg==
X-Google-Smtp-Source: APXvYqzU6fsfiC/IXBiENMa+SEW6bd33sb3C4yGSiGYNHLrfLFHW7InCbZ2ReCslsOL5Wox47MuSxw==
X-Received: by 2002:a63:30b:: with SMTP id 11mr1935326pgd.275.1582228620091;
 Thu, 20 Feb 2020 11:57:00 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
 by smtp.gmail.com with ESMTPSA id w18sm154305pge.4.2020.02.20.11.56.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 11:56:59 -0800 (PST)
Date: Fri, 21 Feb 2020 01:26:54 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: add blank line after union
Message-ID: <20200220195654.GA14056@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

add a blank line after union declaration to fix checkpatch.pl warning

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/octeon/octeon-stubs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index d2bd379b1fd9..ea33c94fa12b 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -382,6 +382,7 @@ union cvmx_ipd_sub_port_qos_cnt {
 		uint64_t reserved_41_63:23;
 	} s;
 };
+
 typedef struct {
 	uint32_t dropped_octets;
 	uint32_t dropped_packets;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
