Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EEC1DF68C
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 May 2020 12:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BE3188406;
	Sat, 23 May 2020 10:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FMjOHkrlUDSS; Sat, 23 May 2020 10:12:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2FBA883B1;
	Sat, 23 May 2020 10:12:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C869F1BF5AA
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 10:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C3140883A9
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 10:12:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q6lWsPBc9Kf4 for <devel@linuxdriverproject.org>;
 Sat, 23 May 2020 10:12:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 73508883A1
 for <devel@driverdev.osuosl.org>; Sat, 23 May 2020 10:12:50 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04NACmJ9155927;
 Sat, 23 May 2020 10:12:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=5dSe5IvH3gZp8eVbU8860nAYyr1mdi8DKTTApumlViE=;
 b=VN5QCfgITqPBN+wZNYv5GFU8YA/+5ms6sAOvUqtIlAo4mGQIzhqodOXpfP7m9LljerAh
 J1DBlljUeY8DzIIv6v8991SuJpSps//+Eobc5wsC2Hm2CQWdp2e74GbbvFhRwQF0ZBpc
 /Lbe+N5b6JtwrlUzo2JdRKZq97Hw3tgsO76l7sqekjHmqxP62kU87CpSFOYzM0/8kv03
 SI8jpv0+rC6IrbipUL9bOPbmFTkcXWduakQhG3159iJ7OjpHgW/vcm7lvif7P2M/4/5i
 AYutpZ/ZAA2t2efHFgCe3IAY0nCGYt/e9BNo8KYHMLEQg8CdH/d6Td+YmZ9CxP3ux/CV DQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 316vfn0k1e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 23 May 2020 10:12:48 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04NA8mqP161765;
 Sat, 23 May 2020 10:10:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 316sv92q8e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 23 May 2020 10:10:47 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04NAAkYn032476;
 Sat, 23 May 2020 10:10:46 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 23 May 2020 03:10:45 -0700
Date: Sat, 23 May 2020 13:10:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: tvboxspy@gmail.com
Subject: [bug report] staging: vt6656: vnt_beacon_xmit use extra_tx_headroom.
Message-ID: <20200523101040.GA98132@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9629
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 suspectscore=10
 adultscore=0 phishscore=0 mlxscore=0 malwarescore=0 mlxlogscore=868
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005230084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9629
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 clxscore=1015
 priorityscore=1501 mlxscore=0 malwarescore=0 spamscore=0 impostorscore=0
 mlxlogscore=892 lowpriorityscore=0 bulkscore=0 adultscore=0
 suspectscore=10 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005230085
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Malcolm Priestley,

The patch 9deca1e3e2b6: "staging: vt6656: vnt_beacon_xmit use
extra_tx_headroom." from May 16, 2020, leads to the following static
checker warning:

	drivers/staging/vt6656/rxtx.c:729 vnt_beacon_xmit()
	warn: struct type mismatch 'vnt_beacon_buffer vs vnt_tx_usb_header'

drivers/staging/vt6656/rxtx.c
   660  static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
   661  {
   662          struct vnt_beacon_buffer *beacon_buffer;
                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
So far as I can see this could be declared as a "vnt_tx_usb_header".
The "vnt_tx_usb_header" is the first member of the "vnt_beacon_buffer"
beacon struct.

   663          struct vnt_tx_short_buf_head *short_head;
   664          struct ieee80211_tx_info *info;
   665          struct vnt_usb_send_context *context;
   666          struct ieee80211_mgmt *mgmt_hdr;
   667          unsigned long flags;
   668          u32 frame_size = skb->len + 4;
   669          u16 current_rate, count;
   670  
   671          spin_lock_irqsave(&priv->lock, flags);
   672  
   673          context = vnt_get_free_context(priv);
   674          if (!context) {
   675                  dev_dbg(&priv->usb->dev, "%s No free context!\n", __func__);
   676                  spin_unlock_irqrestore(&priv->lock, flags);
   677                  return -ENOMEM;
   678          }
   679  
   680          context->skb = skb;
   681  
   682          spin_unlock_irqrestore(&priv->lock, flags);
   683  
   684          mgmt_hdr = (struct ieee80211_mgmt *)skb->data;
   685          short_head = skb_push(skb, sizeof(*short_head));
   686          count = skb->len;
   687  
   688          if (priv->bb_type == BB_TYPE_11A) {
   689                  current_rate = RATE_6M;
   690  
   691                  /* Get SignalField,ServiceField,Length */
   692                  vnt_get_phy_field(priv, frame_size, current_rate,
   693                                    PK_TYPE_11A, &short_head->ab);
   694  
   695                  /* Get TimeStampOff */
   696                  short_head->time_stamp_off =
   697                                  vnt_time_stamp_off(priv, current_rate);
   698          } else {
   699                  current_rate = RATE_1M;
   700                  short_head->fifo_ctl |= cpu_to_le16(FIFOCTL_11B);
   701  
   702                  /* Get SignalField,ServiceField,Length */
   703                  vnt_get_phy_field(priv, frame_size, current_rate,
   704                                    PK_TYPE_11B, &short_head->ab);
   705  
   706                  /* Get TimeStampOff */
   707                  short_head->time_stamp_off =
   708                          vnt_time_stamp_off(priv, current_rate);
   709          }
   710  
   711          /* Get Duration */
   712          short_head->duration = mgmt_hdr->duration;
   713  
   714          /* time stamp always 0 */
   715          mgmt_hdr->u.beacon.timestamp = 0;
   716  
   717          info = IEEE80211_SKB_CB(skb);
   718          if (info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ) {
   719                  struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)mgmt_hdr;
   720  
   721                  hdr->duration_id = 0;
   722                  hdr->seq_ctrl = cpu_to_le16(priv->seq_counter << 4);
   723          }
   724  
   725          priv->seq_counter++;
   726          if (priv->seq_counter > 0x0fff)
   727                  priv->seq_counter = 0;
   728  
   729          beacon_buffer = skb_push(skb, sizeof(struct vnt_tx_usb_header));
                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   730          beacon_buffer->usb.tx_byte_count = cpu_to_le16(count);
   731          beacon_buffer->usb.pkt_no = context->pkt_no;
   732          beacon_buffer->usb.type = 0x01;

We only need "beacon_buffer->usb".

   733  
   734          context->type = CONTEXT_BEACON_PACKET;
   735          context->tx_buffer = beacon_buffer;
                ^^^^^^^^^^^^^^^^^^
This is a void pointer.

   736          context->buf_len = skb->len;
   737  
   738          spin_lock_irqsave(&priv->lock, flags);
   739  
   740          if (vnt_tx_context(priv, context))
   741                  ieee80211_free_txskb(priv->hw, context->skb);
   742  
   743          spin_unlock_irqrestore(&priv->lock, flags);
   744  
   745          return 0;
   746  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
