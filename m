Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8073396AB
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 19:34:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADEE74EBC1;
	Fri, 12 Mar 2021 18:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5GoGunKEAzkZ; Fri, 12 Mar 2021 18:34:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C635E4645A;
	Fri, 12 Mar 2021 18:34:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50A7B1BF3C0
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 18:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BCF7E4645A
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 18:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCUaguv5tMQ6 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 18:34:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F190446562
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 18:34:10 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id o26so4370612wmc.5
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 10:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gefUvqZ+PVzm20AG/CnQcxDANW6owChYqRkVVyHl7s0=;
 b=tNfaRqIQDc771K3h+DqnDik5p/3ktVZzOnsrDjc5aoWX8WfMrOAzxMvfKrdD54awI6
 rmXNInKLormdl+pXjtXo5BX9k2AGDOagyvx2ObXqF2/5fppPG35i+Tg5P8Eh8m3poUpU
 3CIPNHyC+q6BRKs7iyBVP2pTYahlj0phPySyETbVDcS0GXS58sVYb/qCHJYmzlG3qdv2
 x8oJwtPCFCWmaJ1xdB9wAdEkGazaHyhcYOJ1UPu0LuNcxMcz7KCzv9g23WnQEKUvv2bz
 63sc0pLttI7lwWElMMGugQVPEC7xHTYK+oKL/ZTRzZ1LcT9fSI3OvJN3lDFPUMDkWtkF
 PoZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gefUvqZ+PVzm20AG/CnQcxDANW6owChYqRkVVyHl7s0=;
 b=f0+olh7D7wwko6eW3jJoKpO5DVLgrmHYy6tSgNJtKwY1NqE6NEQtwf8Ln1gDldpIo9
 oMdGDGeELI6e8QBM3VesBpM7B1X09sSvyjD+Od9zXh7ua5HfOM/2EOBkDzls8napJzxD
 qghQcvt3VF52g4ziO5s1lbJAeR3ZZeBiNje4OGQZt1uNqU4dIKo0I6IfUhjH233Xhggb
 VK4q+M+2JU9qGmT5RMWLsq1xp2tpOiesCXbOgdY8O+RlRDRulnGhOyVGS1yQ0hLMfmqw
 SOyoM94FlXQ7otp6xHRT9jyNf+rT3tSJrwlIDPTgpREV1wMfOn6Mio82b7gML1dzvvO1
 a49w==
X-Gm-Message-State: AOAM530BLaxOp7lbQ01TkK0WRf3zjXABBhcdnyf3rbJbBuzbwDUQOrgF
 IpcOq287ZPDx8VHW6yvrS5w=
X-Google-Smtp-Source: ABdhPJxPMHJAaDy3+9YtfH9VzWiqu8h81vx2+h496wEyPVDZPPqp4qsDpE3YZKpIZ3OQzPKYt2fbfg==
X-Received: by 2002:a05:600c:4305:: with SMTP id
 p5mr14198573wme.58.1615574049308; 
 Fri, 12 Mar 2021 10:34:09 -0800 (PST)
Received: from agape.jhs ([151.57.163.80])
 by smtp.gmail.com with ESMTPSA id v2sm24905188wmj.1.2021.03.12.10.34.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 10:34:09 -0800 (PST)
Date: Fri, 12 Mar 2021 19:34:06 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 4/4] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_TCP_CSUM_OFFLOAD_RX
Message-ID: <0975dcb60dfb6abdc6a3233283908bd57472c225.1615572985.git.fabioaiuto83@gmail.com>
References: <cover.1615572985.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615572985.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

remove conditional code blocks checked by unused CONFIG_TCP_CSUM_OFFLOAD_RX

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_recv.h  | 5 -----
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 8 --------
 2 files changed, 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index b4aeb44d5d6e..078854a55a31 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -159,11 +159,6 @@ struct rx_pkt_attrib	{
 
 	u8 ack_policy;
 
-/* ifdef CONFIG_TCP_CSUM_OFFLOAD_RX */
-	u8 tcpchk_valid; /*  0: invalid, 1: valid */
-	u8 ip_chkrpt; /* 0: incorrect, 1: correct */
-	u8 tcp_chkrpt; /* 0: incorrect, 1: correct */
-/* endif */
 	u8 key_index;
 
 	u8 data_rate;
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index f52802f24466..78d5b6913467 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -138,15 +138,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 		pkt->protocol = eth_type_trans(pkt, padapter->pnetdev);
 		pkt->dev = padapter->pnetdev;
 
-#ifdef CONFIG_TCP_CSUM_OFFLOAD_RX
-		if ((pattrib->tcpchk_valid == 1) && (pattrib->tcp_chkrpt == 1))
-			pkt->ip_summed = CHECKSUM_UNNECESSARY;
-		else
-			pkt->ip_summed = CHECKSUM_NONE;
-
-#else /* !CONFIG_TCP_CSUM_OFFLOAD_RX */
 		pkt->ip_summed = CHECKSUM_NONE;
-#endif /* CONFIG_TCP_CSUM_OFFLOAD_RX */
 
 		ret = rtw_netif_rx(padapter->pnetdev, pkt);
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
