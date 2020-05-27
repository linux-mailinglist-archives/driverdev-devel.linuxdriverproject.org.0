Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0951E39F7
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 09:12:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FCC986B70;
	Wed, 27 May 2020 07:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vlHldr1kTkzd; Wed, 27 May 2020 07:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3224D86B39;
	Wed, 27 May 2020 07:12:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A22A1BF423
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 05BEB86B63
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y9fmHlO0_ZsG for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 07:12:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B2B586B5A
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 07:12:24 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id r10so11350406pgv.8
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 00:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BtFr88iS5dYVk9M5situj/cALZfUmfJBkWJmVOPGwiA=;
 b=QpCpctZfSnLodygNVJlSPBKkfII/mNnwqTkUPiqiLyWUfdkWaLBSnzHx/wkWxck/sr
 Ea4ImcUsTN9O73vlU31Py0Lno77YlTqpgiQUGnGQoypdkLvlLAEAazyPBrVhqz1zK0YS
 a/GdQnliziiDEZ23uu0dvDu2R8CwnWG91rb0ADbH83+3FeAFOYzRU7t46KYUswvh3g1V
 bsqbHBrOJ/mb9LRdgiYOHrVETupl8qryK3Ayvh8rNES9NZooxr/ysSji89BodjEzPU5J
 bNzyPtN36GPUjguXy8xoGGru+rhEGfIryQPVI2bHohuYltYUmSsDIyeB8pKud8TlKGxI
 vgnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BtFr88iS5dYVk9M5situj/cALZfUmfJBkWJmVOPGwiA=;
 b=HRfQW3N+MXlisQCDN3OA2VKNshEBMhfqmk9MeFifSS+OwFeDHXI7y7PfRVIX4M0+Q6
 7du2m6SAzirn46WmcaQzA5WMSH7G8yBX5UUhFVQqYysYOcLjKKqD8UJKAK2D24XQDD93
 Hmg18NYW9bbO9o/vjJcBap82Ba9ZSb5TT5tHHO0OTWIlWpb1lgX07Mi6IF9u4Y0DUiYf
 +7+aNKcl3Is5OS+zQj8l3VqJGffQh4vomkh+D/Nf3Gysq52+2MVxvtbbsFPeUa40XBk/
 668ED0I3MgMyrHh3hP1Q/rlldU1nlg0/DwJXWSiSrQuWJ0n/NU5BsxTtxG92gP7jdd+X
 Dvkg==
X-Gm-Message-State: AOAM530N+ni5xvlv0BmrWiXqumpgSgaC5Lyq9VTxKjh3/HIPi8gnfG7W
 0OkR1DHr9rpgZgEZx+4HXdM=
X-Google-Smtp-Source: ABdhPJwrauMbNSEdWNH+N5a3rZnBfOIKgD1AmNbuhOdA/dbXFJh9XOpUE81ASBgklIFa4/rbx/Uoxg==
X-Received: by 2002:a63:ad0b:: with SMTP id g11mr2665934pgf.275.1590563544076; 
 Wed, 27 May 2020 00:12:24 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:12:23 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 7/7] media: atomisp: Remove binary_supports_input_format
Date: Wed, 27 May 2020 00:11:50 -0700
Message-Id: <20200527071150.3381228-8-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clang warns:

drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c:1707:64:
warning: implicit conversion from enumeration type 'const enum
ia_css_frame_format' to different enumeration type 'enum
atomisp_input_format' [-Wenum-conversion]
        binary_supports_input_format(xcandidate, req_in_info->format));
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~             ~~~~~~~~~~~~~^~~~~~

As it turns out, binary_supports_input_format only asserts that
xcandidate is not NULL and just returns true so this call is never
actually made.

There are other functions that are called that assert info is not NULL
so this function actually serves no purpose. Remove it. It can be
brought back if needed later.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 .../atomisp/pci/runtime/binary/src/binary.c   | 21 -------------------
 1 file changed, 21 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index 2a23b7c6aeeb..0be2331c66cd 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -857,18 +857,6 @@ binary_supports_output_format(const struct ia_css_binary_xinfo *info,
 	return false;
 }
 
-#ifdef ISP2401
-static bool
-binary_supports_input_format(const struct ia_css_binary_xinfo *info,
-			     enum atomisp_input_format format)
-{
-	assert(info);
-	(void)format;
-
-	return true;
-}
-#endif
-
 static bool
 binary_supports_vf_format(const struct ia_css_binary_xinfo *info,
 			  enum ia_css_frame_format format)
@@ -1699,15 +1687,6 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
 					    binary_supports_output_format(xcandidate, req_bin_out_info->format));
 			continue;
 		}
-#ifdef ISP2401
-		if (!binary_supports_input_format(xcandidate, descr->stream_format)) {
-			ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-					    "ia_css_binary_find() [%d] continue: !%d\n",
-					    __LINE__,
-					    binary_supports_input_format(xcandidate, req_in_info->format));
-			continue;
-		}
-#endif
 		if (xcandidate->num_output_pins > 1 &&
 		    /* in case we have a second output pin, */
 		    req_vf_info                   && /* and we need vf output. */
-- 
2.27.0.rc0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
