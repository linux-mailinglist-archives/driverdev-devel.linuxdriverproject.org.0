Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B921FEDF0
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Nov 2019 16:48:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 463D0874A7;
	Sat, 16 Nov 2019 15:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZVDV7ThKnKzw; Sat, 16 Nov 2019 15:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43C2586EAC;
	Sat, 16 Nov 2019 15:48:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 799171BF31E
 for <devel@linuxdriverproject.org>; Sat, 16 Nov 2019 15:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6ADA287A39
 for <devel@linuxdriverproject.org>; Sat, 16 Nov 2019 15:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pyanpEPiBz2q for <devel@linuxdriverproject.org>;
 Sat, 16 Nov 2019 15:48:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B18C87893
 for <devel@driverdev.osuosl.org>; Sat, 16 Nov 2019 15:48:04 +0000 (UTC)
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6759C20729;
 Sat, 16 Nov 2019 15:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573919284;
 bh=Hs8kuq+LuqdHAW51q4eCyncbYgnnsO9Gp6+sHsLNfl8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KrWnOmkVBZ8DdWb5DUWrMCR/T2F1I9nIScbeeUD+s1kK+6N8l5prr/kKGIdtxdxWP
 qx+Tmi7sRnAjVn/jLGomndUhqfp8VntPeg0q1R1bf512SEHpbEKLG/Ltpd8n68KAXl
 tF0zdpr2qrQ1jcjAoHYvpDJiUw9g0NSGkkWelWIQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 034/150] crypto: ccree - avoid implicit enum
 conversion
Date: Sat, 16 Nov 2019 10:45:32 -0500
Message-Id: <20191116154729.9573-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Herbert Xu <herbert@gondor.apana.org.au>, clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>,
 Gilad Ben-Yossef <gilad@benyossef.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 18e732b8035d175181aae2ded127994cb01694f7 ]

Clang warns when one enumerated type is implicitly converted to another
and this happens in several locations in this driver, ultimately related
to the set_cipher_{mode,config0} functions. set_cipher_mode expects a mode
of type drv_cipher_mode and set_cipher_config0 expects a mode of type
drv_crypto_direction.

drivers/crypto/ccree/cc_ivgen.c:58:35: warning: implicit conversion from
enumeration type 'enum cc_desc_direction' to different enumeration type
'enum drv_crypto_direction' [-Wenum-conversion]
        set_cipher_config0(&iv_seq[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);

drivers/crypto/ccree/cc_hash.c:99:28: warning: implicit conversion from
enumeration type 'enum cc_hash_conf_pad' to different enumeration type
'enum drv_crypto_direction' [-Wenum-conversion]
                set_cipher_config0(desc, HASH_DIGEST_RESULT_LITTLE_ENDIAN);

drivers/crypto/ccree/cc_aead.c:1643:30: warning: implicit conversion
from enumeration type 'enum drv_hash_hw_mode' to different enumeration
type 'enum drv_cipher_mode' [-Wenum-conversion]
        set_cipher_mode(&desc[idx], DRV_HASH_HW_GHASH);

Since this fundamentally isn't a problem because these values just
represent simple integers for a shift operation, make it clear to Clang
that this is okay by making the mode parameter in both functions an int.

Link: https://github.com/ClangBuiltLinux/linux/issues/46
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Gilad Ben-Yossef <gilad@benyossef.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/ccree/cc_hw_queue_defs.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/ccree/cc_hw_queue_defs.h b/drivers/staging/ccree/cc_hw_queue_defs.h
index 2ae0f655e7a0e..b86f47712e303 100644
--- a/drivers/staging/ccree/cc_hw_queue_defs.h
+++ b/drivers/staging/ccree/cc_hw_queue_defs.h
@@ -467,8 +467,7 @@ static inline void set_flow_mode(struct cc_hw_desc *pdesc,
  * @pdesc: pointer HW descriptor struct
  * @mode:  Any one of the modes defined in [CC7x-DESC]
  */
-static inline void set_cipher_mode(struct cc_hw_desc *pdesc,
-				   enum drv_cipher_mode mode)
+static inline void set_cipher_mode(struct cc_hw_desc *pdesc, int mode)
 {
 	pdesc->word[4] |= FIELD_PREP(WORD4_CIPHER_MODE, mode);
 }
@@ -479,8 +478,7 @@ static inline void set_cipher_mode(struct cc_hw_desc *pdesc,
  * @pdesc: pointer HW descriptor struct
  * @mode: Any one of the modes defined in [CC7x-DESC]
  */
-static inline void set_cipher_config0(struct cc_hw_desc *pdesc,
-				      enum drv_crypto_direction mode)
+static inline void set_cipher_config0(struct cc_hw_desc *pdesc, int mode)
 {
 	pdesc->word[4] |= FIELD_PREP(WORD4_CIPHER_CONF0, mode);
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
