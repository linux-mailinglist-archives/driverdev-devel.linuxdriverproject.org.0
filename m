Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AEC309F08
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 22:08:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95AFB85742;
	Sun, 31 Jan 2021 21:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FFhDMvKY8nO; Sun, 31 Jan 2021 21:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6C2B8574A;
	Sun, 31 Jan 2021 21:08:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E6D71BF3C1
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 21:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5749687042
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 21:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYUrk+fTsC4B for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 21:08:23 +0000 (UTC)
X-Greylist: delayed 00:24:32 by SQLgrey-1.7.6
Received: from fallback19.mail.ru (fallback19.mail.ru [185.5.136.251])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C55AE87044
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 21:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=bk.ru;
 s=mail3; 
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From;
 bh=x91kNo+EZoeEPgRKuQ2NmVSJ9662TjzAjj9y/QYpoC8=; 
 b=nSRMioSVzcyPV7XxXvWjb4aePU4L1FuoK23pxWxTbUXxKrC66/GkVUqTktvgP5XthfmrOzCreABimqZBUq4fK4PgGwfVpnrLNunDi9JUKPuG6ALUs7HNKPkMIun+kbh05uViGuX2mMt+MR28RiuZA1Vj6sFv9mRz3oCe5uqDyIQ=;
Received: from [10.161.64.50] (port=44174 helo=smtp42.i.mail.ru)
 by fallback19.m.smailru.net with esmtp (envelope-from <dev.dragon@bk.ru>)
 id 1l6JZS-0004h1-Pd; Sun, 31 Jan 2021 23:43:47 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=bk.ru;
 s=mail3; 
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc;
 bh=x91kNo+EZoeEPgRKuQ2NmVSJ9662TjzAjj9y/QYpoC8=; 
 b=dzMKQPGNzPasuYxwDLNNqvZtaSRSzEMwfkrMazLCS6AOfPLg1HdTy/NMuzgkjmGtO8aqwtk0PPPfy6C2vRUiMj15++GaFj3SomAwPvgPei+wBwZw/O3reRvVvhtcY5bCQnoIHmMd9M1P1h+VJspIcUJYrRJMDbKh1xgEYqx9IWk=;
Received: by smtp42.i.mail.ru with esmtpa (envelope-from <dev.dragon@bk.ru>)
 id 1l6JYg-0001eV-Na; Sun, 31 Jan 2021 23:42:59 +0300
From: dev.dragon@bk.ru
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: wimax: i2400m: fixing several coding style issues.
Date: Sun, 31 Jan 2021 23:42:50 +0300
Message-Id: <20210131204250.112299-1-dev.dragon@bk.ru>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-7564579A: 78E4E2B564C1792B
X-77F55803: 4F1203BC0FB41BD953AC099BC0052A9CD238BCF93DF237168F57FB2D6D655B83182A05F5380850401908E7477F209884146BBE44F1E7D0906FF54D6A43B18685D1C0373C7B4A6AFA
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7E5D7EAC6EBA58433EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006377845AD97F799C6E88638F802B75D45FF5571747095F342E8C7A0BC55FA0FE5FC6E153D1C801A08924BDCA29D9535C0038B440D6D0EA8E47C389733CBF5DBD5E913377AFFFEAFD269176DF2183F8FC7C04CF195F1528592878941B15DA834481FCF19DD082D7633A0EF3E4896CB9E6436389733CBF5DBD5E9D5E8D9A59859A8B6A50BD5087FBFCDAACC7F00164DA146DA6F5DAA56C3B73B237318B6A418E8EAB8D32BA5DBAC0009BE9E8FC8737B5C22496F6A3E018CF4DC8076E601842F6C81A12EF20D2F80756B5F7E9C4E3C761E06A776E601842F6C81A127C277FBC8AE2E8BDC0F6C5B2EEF3D0C3AA81AA40904B5D9DBF02ECDB25306B2B25CBF701D1BE8734AD6D5ED66289B5278DA827A17800CE7615D336674ED096D67F23339F89546C5A8DF7F3B2552694A6FED454B719173D6725E5C173C3A84C34AF53C55BE5D933E35872C767BF85DA2F004C906525384306FED454B719173D6462275124DF8B9C99B0B8D173C204012BD9CCCA9EDD067B1EDA766A37F9254B7
X-B7AD71C0: AC4F5C86D027EB782CDD5689AFBDA7A24A6D60772A99906F8E1CD14B953EB46D079C992D0118F219355D89D7DBCDD132
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C414F749A5E30D975C6FA9FB90A9CF701879637C1C50ABF52CFB5E0A650711DE319C2B6934AE262D3EE7EAB7254005DCEDD39702B95798B16792E1F3B950BCE21616EB5DE968479BF567E3B074FD9791DFBDC6A1CF3F042BAD6DF99611D93F60EF52D31B9D28593E51699F904B3F4130E343918A1A30D5E7FCCB5012B2E24CD356
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D34A5970F8A4685C8ABB4CDE1EFF6DF57DB0F4946944468DBD5ADA320FAD1ECDDB44E96CE15A58263811D7E09C32AA3244CE0B5882785AAEB036E4A2806BEE677EBE3D93501275E802F927AC6DF5659F194
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojyKiJYJ15DtKwsJfFAVRJIA==
X-Mailru-Sender: 3A338A78718AEC5AA85B3E7661095C1EBF4E5C4355551C8E446F0BA90CFFE679B33E51DCCD4AC27D3833C6AC539110AEA432B8CD90067B65A6C5C4E98768B51D7AA22088860DD9FF5CDEF9E650933936342CD0BA774DB6A9AE208404248635DF
X-Mras: Ok
X-7564579A: 646B95376F6C166E
X-77F55803: 6242723A09DB00B429696F2DCEDD653A3882F69B6077407EB31F15AD7B7D4C54049FFFDB7839CE9E186C0D0944DC462B3BC431267A69C345A13E41C30D6794742283C5ABD7B9D202
X-7FA49CB5: 0D63561A33F958A5BDCF817A81408DC605D2B287DD593CB65934AA15225F69948941B15DA834481FA18204E546F3947C5755EDFBF798C333CC7F00164DA146DAFE8445B8C89999729449624AB7ADAF37F6B57BC7E64490611E7FA7ABCAF51C921661749BA6B97735F6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA73AA81AA40904B5D9A18204E546F3947CA0BCD6C998BE2772040F9FF01DFDA4A84AD6D5ED66289B52698AB9A7B718F8C442539A7722CA490C13377AFFFEAFD2690E30A4C9C8E338DAC2C510BA6FADEC9493EC92FD9297F6715571747095F342E857739F23D657EF2BD5E8D9A59859A8B652133A072312AED0089D37D7C0E48F6C5571747095F342E857739F23D657EF2B6825BDBE14D8E702ABEDDA51113D120200306258E7E6ABB4E4A6367B16DE6309
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C414F749A5E30D975C6FA9FB90A9CF7018DF758BEBA29023735E24EA6B0388E4719C2B6934AE262D3EE7EAB7254005DCEDD39702B95798B16792E1F3B950BCE21616EB5DE968479BF55FE3B9244D85F0BB8E8E86DC7131B365E7726E8460B7C23C
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojyKiJYJ15DtL6gexlJ9/xyA==
X-Mailru-MI: 800
X-Mailru-Sender: A5480F10D64C9005CC619DDFF34CA75FBBCBABB393515EE6B8318DDA0DAA5D2520D24A6AA3ADFC6DCD4CDAD98BDCABE8DDBB79867CC2C1EC846E85FF75DBDC4983CE97D6EC8C31C553326A0E03014151EAB4BC95F72C04283CDA0F3B3F5B9367
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
Cc: devel@driverdev.osuosl.org, Dmitrii Wolf <dev.dragon@bk.ru>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dmitrii Wolf <dev.dragon@bk.ru>

Fixed a coding style issues.

Signed-off-by: Dmitrii Wolf <dev.dragon@bk.ru>
---
 drivers/staging/wimax/i2400m/debugfs.c |  2 +-
 drivers/staging/wimax/i2400m/netdev.c  |  2 +-
 drivers/staging/wimax/i2400m/rx.c      | 23 +++++++++++------------
 drivers/staging/wimax/i2400m/usb.c     |  2 +-
 4 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/debugfs.c b/drivers/staging/wimax/i2400m/debugfs.c
index 1c640b41ea4c..4e6e1e3f015e 100644
--- a/drivers/staging/wimax/i2400m/debugfs.c
+++ b/drivers/staging/wimax/i2400m/debugfs.c
@@ -170,7 +170,7 @@ int debugfs_i2400m_reset_set(void *data, u64 val)
 	int result;
 	struct i2400m *i2400m = data;
 	enum i2400m_reset_type rt = val;
-	switch(rt) {
+	switch (rt) {
 	case I2400M_RT_WARM:
 	case I2400M_RT_COLD:
 	case I2400M_RT_BUS:
diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
index 8339d600e77b..0895a2e441d3 100644
--- a/drivers/staging/wimax/i2400m/netdev.c
+++ b/drivers/staging/wimax/i2400m/netdev.c
@@ -523,7 +523,7 @@ void i2400m_net_erx(struct i2400m *i2400m, struct sk_buff *skb,
 
 	d_fnstart(2, dev, "(i2400m %p skb %p [%u] cs %d)\n",
 		  i2400m, skb, skb->len, cs);
-	switch(cs) {
+	switch (cs) {
 	case I2400M_CS_IPV4_0:
 	case I2400M_CS_IPV4:
 		i2400m_rx_fake_eth_header(i2400m->wimax_dev.net_dev,
diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2400m/rx.c
index c9fb619a9e01..807bd3db69e9 100644
--- a/drivers/staging/wimax/i2400m/rx.c
+++ b/drivers/staging/wimax/i2400m/rx.c
@@ -485,8 +485,7 @@ struct i2400m_roq_data {
  * store the sequence number (sn) and the cs (packet type) coming from
  * the RX payload header from the device.
  */
-struct i2400m_roq
-{
+struct i2400m_roq {
 	unsigned ws;
 	struct sk_buff_head queue;
 	struct i2400m_roq_log *log;
@@ -556,7 +555,7 @@ void i2400m_roq_log_entry_print(struct i2400m *i2400m, unsigned index,
 {
 	struct device *dev = i2400m_dev(i2400m);
 
-	switch(e->type) {
+	switch (e->type) {
 	case I2400M_RO_TYPE_RESET:
 		dev_err(dev, "q#%d reset           ws %u cnt %u sn %u/%u"
 			" - new nws %u\n",
@@ -764,9 +763,9 @@ unsigned __i2400m_roq_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
 				 new_nws);
 			__skb_unlink(skb_itr, &roq->queue);
 			i2400m_net_erx(i2400m, skb_itr, roq_data_itr->cs);
-		}
-		else
+		} else {
 			break;	/* rest of packets all nsn_itr > nws */
+		}
 	}
 	roq->ws = sn;
 	return new_nws;
@@ -819,7 +818,7 @@ void i2400m_roq_reset(struct i2400m *i2400m, struct i2400m_roq *roq)
  */
 static
 void i2400m_roq_queue(struct i2400m *i2400m, struct i2400m_roq *roq,
-		      struct sk_buff * skb, unsigned lbn)
+		struct sk_buff *skb, unsigned lbn)
 {
 	struct device *dev = i2400m_dev(i2400m);
 	unsigned nsn, len;
@@ -882,7 +881,7 @@ void i2400m_roq_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
  */
 static
 void i2400m_roq_queue_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
-				struct sk_buff * skb, unsigned sn)
+		struct sk_buff *skb, unsigned sn)
 {
 	struct device *dev = i2400m_dev(i2400m);
 	unsigned nsn, old_ws, len;
@@ -1046,7 +1045,7 @@ void i2400m_rx_edata(struct i2400m *i2400m, struct sk_buff *skb_rx,
 			 ro_type, ro_cin, roq->ws, ro_sn,
 			 __i2400m_roq_nsn(roq, ro_sn), size);
 		d_dump(2, dev, payload, size);
-		switch(ro_type) {
+		switch (ro_type) {
 		case I2400M_RO_TYPE_RESET:
 			i2400m_roq_reset(i2400m, roq);
 			kfree_skb(skb);	/* no data here */
@@ -1068,9 +1067,9 @@ void i2400m_rx_edata(struct i2400m *i2400m, struct sk_buff *skb_rx,
 		spin_lock_irqsave(&i2400m->rx_lock, flags);
 		kref_put(&i2400m->rx_roq_refcount, i2400m_rx_roq_destroy);
 		spin_unlock_irqrestore(&i2400m->rx_lock, flags);
-	}
-	else
+	} else {
 		i2400m_net_erx(i2400m, skb, cs);
+	}
 error_skb_clone:
 error:
 	d_fnend(2, dev, "(i2400m %p skb_rx %p single %u payload %p "
@@ -1346,7 +1345,7 @@ int i2400m_rx_setup(struct i2400m *i2400m)
 {
 	int result = 0;
 
-	i2400m->rx_reorder = i2400m_rx_reorder_disabled? 0 : 1;
+	i2400m->rx_reorder = i2400m_rx_reorder_disabled ? 0 : 1;
 	if (i2400m->rx_reorder) {
 		unsigned itr;
 		struct i2400m_roq_log *rd;
@@ -1365,7 +1364,7 @@ int i2400m_rx_setup(struct i2400m *i2400m)
 			goto error_roq_log_alloc;
 		}
 
-		for(itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
+		for (itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
 			__i2400m_roq_init(&i2400m->rx_roq[itr]);
 			i2400m->rx_roq[itr].log = &rd[itr];
 		}
diff --git a/drivers/staging/wimax/i2400m/usb.c b/drivers/staging/wimax/i2400m/usb.c
index f250d03ce7c7..3bb8c32414c2 100644
--- a/drivers/staging/wimax/i2400m/usb.c
+++ b/drivers/staging/wimax/i2400m/usb.c
@@ -327,7 +327,7 @@ int i2400mu_bus_reset(struct i2400m *i2400m, enum i2400m_reset_type rt)
 }
 
 static void i2400mu_get_drvinfo(struct net_device *net_dev,
-                                struct ethtool_drvinfo *info)
+		struct ethtool_drvinfo *info)
 {
 	struct i2400m *i2400m = net_dev_to_i2400m(net_dev);
 	struct i2400mu *i2400mu = container_of(i2400m, struct i2400mu, i2400m);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
