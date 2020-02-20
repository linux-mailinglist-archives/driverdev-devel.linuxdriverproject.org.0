Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D1A166837
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Feb 2020 21:19:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C75DA862E4;
	Thu, 20 Feb 2020 20:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GnFG5i2JJCV5; Thu, 20 Feb 2020 20:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 516FA862AC;
	Thu, 20 Feb 2020 20:18:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3AE111BF380
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 20:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29A0687635
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 20:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ugBsMKSf5IdA for <devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 20:18:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CEE4B861AB
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 20:18:53 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id u10so6480qvi.2
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 12:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2w+R3Z75BVcBJL4mHaaewYE8ej5x4YeGxTQpsg56oM0=;
 b=qe7hPOoCCTMNdxtIg3f5Pg5ViViUneZC/ftBiK39R+KVP0JYxDL98CFA0YNadsMx/O
 GGsjFOFhKwL8Dvxs5SCZQpNJ5gOJIPlgouPjCxdNRQp+s+RFDuDAXO9/krV4g++BYW9e
 jUYlrUfhlkzvoQAw7wlqGZRWjNjf/75L6hTA0vG08+8mrmHo7+JtHFFfm6y8viK6NmHD
 CBxpa3ASk5oqLVuxb3mJTy+0cOGMBm5lzDsJXgAYiWGZRC68iYsB0jRPc6DmaRBZNVzu
 f3Lph20DUJ5Xf4OOvB2aB9VxfUVK8VMWveuVv4tTteDBeKfIqKl2E8naXchVBmNTXEc9
 fV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2w+R3Z75BVcBJL4mHaaewYE8ej5x4YeGxTQpsg56oM0=;
 b=tqaCPnKERb6xObJcDR/UaHAqLrnOisGL7aszZABeWbTeSdGLgrsdhi20oIrH8Jz7I/
 lET7oE5bD60OBwwA3sDe+AxsOhDt2A/+gx6gKIrdzAfV0iket97LoTbTFWQjoNL9Pww4
 o2d7NAPpbIF87AwwrGWdfskcFHou0Hje+r751V3rXdyuxt7RSlIZl4DiCwYsohcjAPpz
 h982dZ9cPlhuhOVm/GPLwb5AHmIS8IZOA/EBgOJgSR1+N7o1NtGExbyIX1+rgDXpiiiA
 pCLVxuLyz/iESBmqciQap+BVnMUow7dejf2QcwRiwoir4m3aVIXfTtmAQo4lWW0Do0b5
 EeqA==
X-Gm-Message-State: APjAAAWSXsFi5lXuVOdNibi9nKib4bKnHWbKd1B1rn/gW0OrvVAyU5Ek
 vAlgrkS20ADQy6ET3o4ovcEmSxk5q60fG816
X-Google-Smtp-Source: APXvYqzHNbmO1s9R3NGefmrkNGHZZe0xixDdrQKTauLTfQfkXcLz68TcQ+ehcG7N+NwoOzOY7LsmHg==
X-Received: by 2002:a62:6d01:: with SMTP id i1mr32854344pfc.94.1582229439310; 
 Thu, 20 Feb 2020 12:10:39 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
 by smtp.gmail.com with ESMTPSA id l1sm262100pjb.28.2020.02.20.12.10.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 12:10:38 -0800 (PST)
Date: Fri, 21 Feb 2020 01:40:33 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: match parentheses alignment
Message-ID: <20200220201033.GA14855@kaaira-HP-Pavilion-Notebook>
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

match the next line with open parentheses by giving appropriate tabs.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/octeon/octeon-stubs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index ea33c94fa12b..d06743504f2b 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1345,7 +1345,7 @@ static inline void cvmx_pow_work_request_async_nocheck(int scr_addr,
 { }
 
 static inline void cvmx_pow_work_request_async(int scr_addr,
-						       cvmx_pow_wait_t wait)
+					       cvmx_pow_wait_t wait)
 { }
 
 static inline struct cvmx_wqe *cvmx_pow_work_response_async(int scr_addr)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
