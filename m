Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC8C320D74
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:11:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 749DD82EB4
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:11:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40asFj-bYcu5 for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 20:11:51 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 65A1382F06; Sun, 21 Feb 2021 20:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DFA681839;
	Sun, 21 Feb 2021 20:11:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 753111BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71BDB86FD1
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iil8+YxnSXhU for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:11:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C2838701B
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:11:20 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id C7BA05C008D;
 Sun, 21 Feb 2021 15:11:18 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:11:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=erQ4aLlXdSLCQDO88xDFv3qgQA
 2+7qeoglQ68NDOqi8=; b=hu30NFH4CXD2PDv0+5Sj/mH+unPN1XmNDIgWqxZOli
 PcEwSHbnDToAbJyP7iqZkz/OfJB2Nn+03zmdwHpcXKkQsCy+0TRifRLMBCnAX5ZX
 nNm28aAQxfoEBSqGqk+V5jnoCOCzo67WnnNlTvgrpuhFJKIfnW+aXzYteyCpszWN
 3thidWC1t+iaRSaqGTPJGlfnFIczcw+G9fz12TmHjaLk9gLLG1YRVc2HVDHI+9LA
 k4bew172fwob8Hu5XNxz5gazQDQX/LrQNQvg9sRlUvhCwD2qVaMaFkfwQX7uAU69
 pTPNrqQzx6qxcq9wQgvWDLGfnScDvUePC7lxQ4mSvVMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=erQ4aLlXdSLCQDO88
 xDFv3qgQA2+7qeoglQ68NDOqi8=; b=BrilrTiSuv6m0zheL1WbYVluGWbC148hB
 y1YhtbJ14WHcfnW1df7u4FDDq8N+csP4uR94XzKKCyZLg/kxcATKagFG+lvALL/D
 uPw89jLkSDahWDdK2ckFO9P9pV0rlUFw77PV97k1Te2TSF/ZhSMc+quDV5/TaA8L
 GR9eknnt/mBExIw9xlF+l0cFbrBiuFYRKp849XlKkj5/QDtpKrcUDQJ4xLmjzKSh
 ITRWidfV1ZmK+uuv8Jn9Jk0kuC/RKVrBvrb/N/j6YnMqKbZaeKSgGgtADMLlFVtF
 6L8sVWzpPLK3r21jrToauCzIhpWYTs/g4R6FT367qBfrT9ST4YhGA==
X-ME-Sender: <xms:Zr4yYDUgijwNm8XFk0gsjDDKGGyCXGz3ZR-47ArIX3aRPFVPia4EmA>
 <xme:Zr4yYLlwkc7KGDlU_TE8Dqc1ld9hAT62Sx64wolNzaBkr3p7_P8OZgbi8GUvB5u3W
 xeeFdAWnuZrY2EfAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhirghm
 ucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrthhtvg
 hrnhepffehieekueeileeufeeuteegveeugeejfeelhfevkefhhfdvtddvjedufeekfeeu
 necukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:Zr4yYPaMH-85EMCjpwcrqqVjdPSq06_At0bzAQAwS8pEQA3RPIGizQ>
 <xmx:Zr4yYOV0v7SLhNc5wam0o8jq-_pOyZVpyydjv3ih1irPbYBD1m6jdA>
 <xmx:Zr4yYNlH6o1N-6uZW-4bxilq9xI1cB8OMMkCI2n18qWvTXHsENQOWg>
 <xmx:Zr4yYMsSeb2cGk12_P4s3K17C9qKUapplpMx2cP5Yk3HprITWL9UVQ>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id E55B7108005F;
 Sun, 21 Feb 2021 15:11:17 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/7] staging: rtl8192e: ba_record struct cleanups
Date: Fri, 19 Feb 2021 23:11:21 +0000
Message-Id: <20210219231128.27119-1-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset fixes the checkpatch issues related to the `ba_record`
struct defined in `rtl8192e/rtl819x_BA.h` (avoid camelcase). The last
patch reformats the struct a bit to be more consistent with the other
types defined in the same file.

William Durand (7):
  staging: rtl8192e: rename Timer to timer in ba_record struct
  staging: rtl8192e: rename bValid to b_valid in ba_record struct
  staging: rtl8192e: rename DialogToken to dialog_token in ba_record struct
  staging: rtl8192e: rename BaParamSet to ba_param_set in ba_record struct
  staging: rtl8192e: rename BaTimeoutValue to ba_timeout_value in ba_record struct
  staging: rtl8192e: rename BaStartSeqCtrl to ba_start_seq_ctrl in ba_record struct
  staging: rtl8192e: reformat ba_record struct

 drivers/staging/rtl8192e/rtl819x_BA.h     | 12 +--
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 96 +++++++++++------------
 drivers/staging/rtl8192e/rtl819x_TSProc.c |  6 +-
 drivers/staging/rtl8192e/rtllib_tx.c      |  4 +-
 4 files changed, 59 insertions(+), 59 deletions(-)

--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
