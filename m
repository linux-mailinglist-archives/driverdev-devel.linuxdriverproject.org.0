Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A7E329433
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 22:53:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3568A6F5DD;
	Mon,  1 Mar 2021 21:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xx5Pc5yZoZvP; Mon,  1 Mar 2021 21:53:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 746CC6070E;
	Mon,  1 Mar 2021 21:53:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC1FE1BF956
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB5706070E
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 21:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ea1i9h3XdTYV for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 21:53:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E829760697
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 21:53:41 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 078F02F2;
 Mon,  1 Mar 2021 16:53:38 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 01 Mar 2021 16:53:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=XU9CqDB6xAf1yegfOzpc7jhni9
 2NjMhWGXbUDgnQlcM=; b=JCqDbcKtQB74nsiv9Of4z5iYrHyiiisn+dMkU5e0XT
 wDSqhTshQrMWIfmhJufVsVi4F6NAYvoQrq0FEArepEaVQ3/KYTUSpf7dEAWEhIxP
 bUtJssM+MdI+3DLchcSd6wlvPmWJKwlowyQckc/eA1EJxyYu3IjaU+uDapdvyR4F
 plOtEeXa2Tay2DEPhXRZ6q8pE6nxN9UOqxbE1eE6J/Jn/8J6h5CmRBPT5jxPoZrL
 d05ITNCg2T50F9m6Zw5bD5NkAvtE+BTnNKX+1LolaCtSpW/mpJHqKyuOsgvRHjl3
 dYipNNc5equKjd4yMIKIwYlcfI0GOEaJ0R1j/Mvncb6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=XU9CqDB6xAf1yegfO
 zpc7jhni92NjMhWGXbUDgnQlcM=; b=sQqj/wuvyQuYlQW880Wp4a4A4u1KnHP21
 xtxMKR4CnPrwQsmaZ1yQL23DZnVql1S0xbpjLVuPzo34WkhhBbBRSMobQP6eyPz3
 lOo50PMqAxGSDA/OtqRBrp5Inx6SqFWza1QmYgOADcN2GB73kdhiggcRE4LazigO
 nIfKwbKzEDO85K1ywvfzLhwwwGXn9P+pNApolPIJwA8pMPNWX7dQnV5V8ba6Mts6
 Zayh7CJCybzA7kU8J2zX7d47PvvE+bwIannZgM5b5ilq4EsWxWVCKRsFWr+I+PX2
 ljPAibPlVcm9CcvDIbYMLKtLzUGk23xqan7wRo8bzhgkKivFZ0GLQ==
X-ME-Sender: <xms:YmI9YGwYTdBlfffr2oTgB3m-t0H6lOPCP8X_vM2emiOpP0ZGk9AFOw>
 <xme:YmI9YGhjecGOoo3OlhoLHT9iXX2uvdYI84czfQJbpjXqOEOhrsM_xXNRX3hfWuWjy
 sNI-3t8Si2boX_grQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleekgdduheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhirghm
 ucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrthhtvg
 hrnhepffehieekueeileeufeeuteegveeugeejfeelhfevkefhhfdvtddvjedufeekfeeu
 necukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:YmI9YDWwiQVbjt0BzrIviYN4mIM1OmHWgLk2eZDupaNvSvquU8LEdQ>
 <xmx:YmI9YA2uyoXn1trgEqrpZcX_xgkaruHe6uPKiW2JIbejccR-PDCKeQ>
 <xmx:YmI9YBFpO6JjynZ4AAeNPHPlBCmwrtCSvhHHlLJlvr5mWaEiyjkiXQ>
 <xmx:YmI9YJDTgSVbP62A5-omgIv-HoV-0Byl7XRzyQqIG9c9ViVaOoLd2g>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id CCEF5240054;
 Mon,  1 Mar 2021 16:53:37 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/9] rx_ts_record struct cleanups
Date: Mon,  1 Mar 2021 21:53:25 +0000
Message-Id: <20210301215335.767-1-will+git@drnd.me>
X-Mailer: git-send-email 2.30.1
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

This patchset fixes the checkpatch issues related to the `rx_ts_record`
struct defined in `rtl8192e/rtl819x_TS.h` (avoid camelcase). The last
patch reformats the struct a bit to be more consistent with structures
defined in other header files.

William Durand (9):
  staging: rtl8192e: rename TsCommonInfo to ts_common_info in rx_ts_record struct
  staging: rtl8192e: rename RxIndicateSeq to rx_indicate_seq in rx_ts_record struct
  staging: rtl8192e: rename RxTimeoutIndicateSeq to rx_timeout_indicate_seq in rx_ts_record struct
  staging: rtl8192e: rename RxPendingPktList to rx_pending_pkt_list in rx_ts_record struct
  staging: rtl8192e: rename RxPktPendingTimer to rx_pkt_pending_timer in rx_ts_record struct
  staging: rtl8192e: rename RxAdmittedBARecord to rx_admitted_ba_record in rx_ts_record struct
  staging: rtl8192e: rename RxLastSeqNum to rx_last_seq_num in rx_ts_record struct
  staging: rtl8192e: rename RxLastFragNum to rx_last_frag_num in rx_ts_record struct
  staging: rtl8192e: reformat rx_ts_record struct

 drivers/staging/rtl8192e/rtl819x_BAProc.c | 12 ++--
 drivers/staging/rtl8192e/rtl819x_TS.h     | 18 +++---
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 58 +++++++++---------
 drivers/staging/rtl8192e/rtllib_rx.c      | 74 +++++++++++------------
 4 files changed, 81 insertions(+), 81 deletions(-)

--
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
