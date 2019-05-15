Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 053361F928
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 19:09:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B620B86EC9;
	Wed, 15 May 2019 17:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H+M90hh3-ike; Wed, 15 May 2019 17:08:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80BD186E41;
	Wed, 15 May 2019 17:08:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5AA1BF3A3
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C64087CEE
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xfvg-2sNJUO for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 17:08:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D8F5B87CDB
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 17:08:52 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g9so275295pfo.11
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 10:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=23X9deLcPS7M5i4nGyMMmygstk5SEYNCAX+o3AHyfeo=;
 b=fQHkwImB8r0QyXlb9e5+h5oXBt5trSiYfkbVVbzlKuBB8URoYIrdk/yKGOurdOlV30
 WkTkhKT0kuQ1GqPmF3oHJqhvKpzyLwZA9y8aVmfoYiHE2s73HSvblddBcoGoBNREOfsH
 P7BNaxeYuIpqHuKWQ3MmfPQZQun2ob/2Gb2ANMHlkL8lIPI0X1Bh/uVurNBdJcBgvB2p
 vhV2/zq0h+FKEHLWvkllwmR7L/RhBi/oCrI02pdDjf9bU0Vt5Ak7vGIissSbfcxuJKue
 7Kq/tGsRGBTIjrBpuGfpGUtlcR8qfJ4iKFDPsJdcue5xVpkX8534WJ1mtki15x6muNVd
 F5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=23X9deLcPS7M5i4nGyMMmygstk5SEYNCAX+o3AHyfeo=;
 b=GKKY1uW4p74je1nC5rKdSyeBrBqQG0BJDDWTvuPOQv03AlePcYyGmJE+gNJAMJ8oCj
 jMsjvREQTS2tGVZTO3RnvvaTrIqWlZiC62oHUlT/RcZ9F1k0G6K6jMVdn2jEdLJNRIZp
 uI8k0aFCHnJszYRoMLw7llt6ULkMP33ISDvOf1ovXzW1ClRbLTzyRufASJWed9eGc8Ah
 EMgZqprlz6azDlamLK2vy7Fe9gC6IGBHVXL7TjjKKCHRrsgo2tvLnGMlyXU996X+MyNn
 7mb5iYrq/sJDt8rngE3zpKjJXx+Hjp1vTLc+RROjVPexQXV7ZFwrNjuEWfvB6y3etO7b
 zn+w==
X-Gm-Message-State: APjAAAXffQSRxIOpZ75B2v0OokeWcjlAZc3tdiWHNYjuHZboX5+PGQgl
 k6jsSOqI3AUlgyyids7FOJU=
X-Google-Smtp-Source: APXvYqxvgAGdtqxgTRA3wWjOH/8MQHIh3AOafeFV72Gicxkd3YlsMvnulx4BkFOxuCfcNNlQ9ad67g==
X-Received: by 2002:a62:cdc6:: with SMTP id o189mr22255368pfg.74.1557940132528; 
 Wed, 15 May 2019 10:08:52 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id b77sm5398936pfj.99.2019.05.15.10.08.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 10:08:51 -0700 (PDT)
Date: Wed, 15 May 2019 22:38:46 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: rtw_recv: fix warning Unneeded
 variable ret
Message-ID: <20190515170846.GA3817@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below warning reported by coccicheck

drivers/staging/rtl8723bs/core/rtw_recv.c:1903:5-8: Unneeded variable:
"ret". Return "_SUCCESS" on line 1972
drivers/staging/rtl8723bs/core/rtw_recv.c:1618:6-9: Unneeded variable:
"ret". Return "_SUCCESS" on line 1705

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index b543e97..b9f758e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1615,7 +1615,6 @@ sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	u8 *psnap_type;
 	struct ieee80211_snap_hdr	*psnap;
 	__be16 be_tmp;
-	sint ret = _SUCCESS;
 	struct adapter			*adapter = precvframe->u.hdr.adapter;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	u8 *ptr = get_recvframe_data(precvframe) ; /*  point to frame_ctrl field */
@@ -1702,7 +1701,7 @@ sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
 		memcpy(ptr+12, &be_tmp, 2);
 	}
 
-	return ret;
+	return _SUCCESS;
 }
 
 /* perform defrag */
@@ -1900,7 +1899,6 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	_pkt *sub_pkt, *subframes[MAX_SUBFRAME_COUNT];
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 	struct __queue *pfree_recv_queue = &(precvpriv->free_recv_queue);
-	int	ret = _SUCCESS;
 
 	nr_subframes = 0;
 
@@ -1969,7 +1967,7 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	prframe->u.hdr.len = 0;
 	rtw_free_recvframe(prframe, pfree_recv_queue);/* free this recv_frame */
 
-	return ret;
+	return  _SUCCESS;
 }
 
 int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
