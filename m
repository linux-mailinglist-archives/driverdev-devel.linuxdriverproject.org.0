Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1CA31276A
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 21:33:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B23EA87000;
	Sun,  7 Feb 2021 20:33:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ShQarwSnPulx; Sun,  7 Feb 2021 20:33:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 660C986FF3;
	Sun,  7 Feb 2021 20:33:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D27A21BF962
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 20:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF18586693
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 20:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X8E6PI1CtD0I for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 20:33:50 +0000 (UTC)
X-Greylist: delayed 01:16:56 by SQLgrey-1.7.6
Received: from fallback24.mail.ru (fallback24.m.smailru.net [94.100.187.223])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 353008666C
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 20:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=bk.ru;
 s=mail; 
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=/Bca4x7kPhITAOc4+dR8CZBBEi38H7ABKDL2jSGpw6k=; 
 b=fJC1GOYLQ1ic97l1JSt4N54k8JBG6PBN39IYKN3OAuVMOKDI3kYP0TKuzLP7QrWimnz6IPrL9S0+p5wLQexYED+Lyk5rKzTDowrDVjkv2/Rh3VhDyE/S5ey6ZNRmJKYgE7xWUYB9VMuc6rHOOdG6vMGu2+w7ae7XbekS398nulU=;
Received: from [10.161.64.54] (port=60380 helo=smtp46.i.mail.ru)
 by fallback24.m.smailru.net with esmtp (envelope-from <dev.dragon@bk.ru>)
 id 1l8pYB-0005aN-2C; Sun, 07 Feb 2021 22:16:51 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=bk.ru;
 s=mail3; 
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc;
 bh=/Bca4x7kPhITAOc4+dR8CZBBEi38H7ABKDL2jSGpw6k=; 
 b=MVa0xjBzut7udmMKI7nHrKxEX4CcBmJUTjnGZU5lrxzajMjtns+gf+uOihQ9MohfstV5EMPCMLiAWHR/g516YNl2+fpMwtpytLsFFkYjTOdqhGjb9jtsuBUvIf3cwK7TEK4jhInXDnTwEpl1mspIeJaGA4T6oKzo9rfgJzc9wlQ=;
Received: by smtp46.i.mail.ru with esmtpa (envelope-from <dev.dragon@bk.ru>)
 id 1l8pXO-0006lW-68; Sun, 07 Feb 2021 22:16:02 +0300
From: dev.dragon@bk.ru
To: gregkh@linuxfoundation.org, joe@perches.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [96e8740] [PATCH 2/2] Staging: wimax: i2400m: some readability
 improvements.
Date: Sun,  7 Feb 2021 22:11:24 +0300
Message-Id: <96e87403e3d3d825ea8fad6108aef905b71439b3.1612722827.git.dev.dragon@bk.ru>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <fb815f4d3d75cdb10add70378de1271bc8d6297e.camel@perches.com>
References: <fb815f4d3d75cdb10add70378de1271bc8d6297e.camel@perches.com>
MIME-Version: 1.0
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD953AC099BC0052A9C4647521586BE7E6324520D2A088600D8182A05F5380850404B252BE1667243DE84D9B898612C132682767DB2FBA387A330118B74C0ACF4B6
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE78C6616F30072131EEA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006376D321F80F15DC2F18638F802B75D45FF5571747095F342E8C7A0BC55FA0FE5FC13789E3A9DE5651AF10AADA2A25999B938976C3FA32500E7389733CBF5DBD5E913377AFFFEAFD269176DF2183F8FC7C0ECC8AC47CD0EDEFF8941B15DA834481FCF19DD082D7633A0EF3E4896CB9E6436389733CBF5DBD5E9D5E8D9A59859A8B68BFD6B1B042489ACCC7F00164DA146DA6F5DAA56C3B73B237318B6A418E8EAB8D32BA5DBAC0009BE9E8FC8737B5C224929E57CDFA355096D76E601842F6C81A12EF20D2F80756B5F7E9C4E3C761E06A776E601842F6C81A127C277FBC8AE2E8B62D5054EC4B172913AA81AA40904B5D9DBF02ECDB25306B2B25CBF701D1BE8734AD6D5ED66289B5278DA827A17800CE708FD7798F0903B8467F23339F89546C5A8DF7F3B2552694A6FED454B719173D6725E5C173C3A84C3BB0616187D4CAD1A35872C767BF85DA2F004C906525384306FED454B719173D6462275124DF8B9C9DE2850DD75B2526BE5BFE6E7EFDEDCD789D4C264860C145E
X-B7AD71C0: 14C14B24D00AF5AC321EF223B8115265C69B993890792DF82CDD5689AFBDA7A24A6D60772A99906F8E1CD14B953EB46D7FFC4AA0EAC82149355D89D7DBCDD132
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C4B5F30041107ECCAEB459AD25B48836B76E15E3BE9FD72F9AC6CDE5D1141D2B1C3C4564651359B56567130BC3681D802966BE6A6F915D554BAD91A466A1DEF99B296C473AB1E142180E5E5C374F3061BC4149B4CAC14B9A2E0BBB3A167846B1769633FEACD61852CB15E2725BA614EAEA1EF972C1F679AE1C
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D3490011A262ADAEDFE24D2BDA8AA85BD10BDB7F90915DF93FD4D88683421CED2393751EE111E177B861D7E09C32AA3244CBB3C41E5FB712936D2B220EE842FB5B13C6EB905E3A8056B83B48618A63566E0
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojMxr0zTsJFiRYj/Hc+GptnA==
X-Mailru-Sender: 3A338A78718AEC5AA85B3E7661095C1EE790D9A8277C46E587095B9FEFED063203B414F5458D5A603833C6AC539110AEA432B8CD90067B65A6C5C4E98768B51D7AA22088860DD9FF5CDEF9E650933936342CD0BA774DB6A9AE208404248635DF
X-Mras: Ok
X-7564579A: B8F34718100C35BD
X-77F55803: 6242723A09DB00B429696F2DCEDD653A3882F69B6077407EBDC0DA2038A6E990049FFFDB7839CE9E2C56D468AE39A59D086D03DD438A290760C7D01A38DAEC92179F4A4197571D89
X-7FA49CB5: 0D63561A33F958A581D346DCD38B6B205339494682872F1EDB495E52750691888941B15DA834481FA18204E546F3947C81F3E54FD4568659F6B57BC7E64490618DEB871D839B7333395957E7521B51C2DFABB839C843B9C08941B15DA834481F8AA50765F7900637A596F99EC23ACBE8389733CBF5DBD5E9B5C8C57E37DE458BD9DD9810294C998ED8FC6C240DEA76428AA50765F7900637F949C81B525D3C01D81D268191BDAD3DBD4B6F7A4D31EC0BEA7A3FFF5B025636A7F4EDE966BC389F9E8FC8737B5C22491BF66EBC6EB0FB8F089D37D7C0E48F6CCF19DD082D7633A0E7DDDDC251EA7DABAAAE862A0553A39223F8577A6DFFEA7C0448EC3C8497E1A743847C11F186F3C5E7DDDDC251EA7DABCC89B49CDF41148F53FDB0A1CE3EC88B3B503F486389A921A5CC5B56E945C8DA
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C4B5F30041107ECCAEB459AD25B48836B76E15E3BE9FD72F9AC6CDE5D1141D2B1C442D4BE7CEDD784AF8107E2856178FB3F8241E11EB1F1740AD91A466A1DEF99B296C473AB1E14218B936CB490224F2464EEA7BD89490CAC0EDDA962BC3F61961
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojMxr0zTsJFiT4oy6ocM4zwQ==
X-Mailru-MI: 800
X-Mailru-Sender: A5480F10D64C9005C3FADA55C8765CC3E054991AC64CD1AA8F80E03B3B627EB745C9C96EC392C23ACD4CDAD98BDCABE8DDBB79867CC2C1EC846E85FF75DBDC4983CE97D6EC8C31C553326A0E03014151EAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
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
Cc: dev.dragon@bk.ru
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dmitrii Wolf <dev.dragon@bk.ru>

 Hello, developers!
 Sorry for the late answer. As you know - i am a newbie and it is my first kernel patch.
 After reading kernelnewbies.or, ./Documentation/process/ files and viewing FOSDEM's videpo
 "Write and Submit your first Linux kernel Patch", i took a decision to send you some
 changes. I understand that it is annoying to get this "style fixing" patches. So, the
 Joe Perches's idea to improve code readability was implemented in second patch. Also,
 some new readability improvements added to it.
 Thanks in advance!

Signed-off-by: Dmitrii Wolf <dev.dragon@bk.ru>
---
 drivers/staging/wimax/i2400m/netdev.c |  8 ++++----
 drivers/staging/wimax/i2400m/rx.c     | 25 +++++++++++++------------
 2 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
index 0895a2e441d3..5f79ccc87656 100644
--- a/drivers/staging/wimax/i2400m/netdev.c
+++ b/drivers/staging/wimax/i2400m/netdev.c
@@ -366,13 +366,13 @@ netdev_tx_t i2400m_hard_start_xmit(struct sk_buff *skb,
 		result = i2400m_net_wake_tx(i2400m, net_dev, skb);
 	else
 		result = i2400m_net_tx(i2400m, net_dev, skb);
-	if (result <  0) {
-drop:
-		net_dev->stats.tx_dropped++;
-	} else {
+	if (result >= 0) {
 		net_dev->stats.tx_packets++;
 		net_dev->stats.tx_bytes += skb->len;
 	}
+drop:
+	net_dev->stats.tx_dropped++;
+
 	dev_kfree_skb(skb);
 	d_fnend(3, dev, "(skb %p net_dev %p) = %d\n", skb, net_dev, result);
 	return NETDEV_TX_OK;
diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2400m/rx.c
index 807bd3db69e9..fdc5da409683 100644
--- a/drivers/staging/wimax/i2400m/rx.c
+++ b/drivers/staging/wimax/i2400m/rx.c
@@ -194,8 +194,8 @@ void i2400m_report_hook_work(struct work_struct *ws)
 		spin_unlock_irqrestore(&i2400m->rx_lock, flags);
 		if (list_empty(&list))
 			break;
-		else
-			d_printf(1, dev, "processing queued reports\n");
+
+		d_printf(1, dev, "processing queued reports\n");
 		list_for_each_entry_safe(args, args_next, &list, list_node) {
 			d_printf(2, dev, "processing queued report %p\n", args);
 			i2400m_report_hook(i2400m, args->l3l4_hdr, args->size);
@@ -756,16 +756,15 @@ unsigned __i2400m_roq_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
 		roq_data_itr = (struct i2400m_roq_data *) &skb_itr->cb;
 		nsn_itr = __i2400m_roq_nsn(roq, roq_data_itr->sn);
 		/* NSN bounds assumed correct (checked when it was queued) */
-		if (nsn_itr < new_nws) {
-			d_printf(2, dev, "ERX: roq %p - release skb %p "
-				 "(nsn %u/%u new nws %u)\n",
-				 roq, skb_itr, nsn_itr, roq_data_itr->sn,
-				 new_nws);
-			__skb_unlink(skb_itr, &roq->queue);
-			i2400m_net_erx(i2400m, skb_itr, roq_data_itr->cs);
-		} else {
+		if (nsn_itr >= new_nws) {
 			break;	/* rest of packets all nsn_itr > nws */
 		}
+		d_printf(2, dev, "ERX: roq %p - release skb %p "
+			 "(nsn %u/%u new nws %u)\n",
+			 roq, skb_itr, nsn_itr, roq_data_itr->sn,
+			 new_nws);
+		__skb_unlink(skb_itr, &roq->queue);
+		i2400m_net_erx(i2400m, skb_itr, roq_data_itr->cs);
 	}
 	roq->ws = sn;
 	return new_nws;
@@ -904,8 +903,9 @@ void i2400m_roq_queue_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
 		struct i2400m_roq_data *roq_data;
 		roq_data = (struct i2400m_roq_data *) &skb->cb;
 		i2400m_net_erx(i2400m, skb, roq_data->cs);
-	} else
+	} else {
 		__i2400m_roq_queue(i2400m, roq, skb, sn, nsn);
+	}
 
 	__i2400m_roq_update_ws(i2400m, roq, sn + 1);
 	i2400m_roq_log_add(i2400m, roq, I2400M_RO_TYPE_PACKET_WS,
@@ -1321,9 +1321,10 @@ void i2400m_unknown_barker(struct i2400m *i2400m,
 			       8, 4, buf, 64, 0);
 		printk(KERN_ERR "%s... (only first 64 bytes "
 		       "dumped)\n", prefix);
-	} else
+	} else {
 		print_hex_dump(KERN_ERR, prefix, DUMP_PREFIX_OFFSET,
 			       8, 4, buf, size, 0);
+	}
 }
 EXPORT_SYMBOL(i2400m_unknown_barker);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
