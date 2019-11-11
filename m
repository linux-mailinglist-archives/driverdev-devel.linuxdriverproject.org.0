Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A119F813C
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 21:29:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF381221D2;
	Mon, 11 Nov 2019 20:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OeB8aklURadJ; Mon, 11 Nov 2019 20:29:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E6B1B221F5;
	Mon, 11 Nov 2019 20:29:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6C711BF337
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 20:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C0D918723D
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 20:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e-VBSWR3oPnF for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 20:29:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D69086FB1
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 20:29:02 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUGIu-0002Tk-G9; Mon, 11 Nov 2019 20:28:52 +0000
Date: Mon, 11 Nov 2019 20:28:52 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: wfx: add gcc extension __force cast
Message-ID: <20191111202852.GX26530@ZenIV.linux.org.uk>
References: <20191108233837.33378-1-jbi.octave@gmail.com>
 <20191109091913.GV26530@ZenIV.linux.org.uk>
 <alpine.LFD.2.21.1911111347380.226731@ninjahub.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.1911111347380.226731@ninjahub.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Boqun.Feng@microsoft.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 11, 2019 at 01:51:33PM +0000, Jules Irenge wrote:
> 
> > NAK.  force-cast (and it's not a gcc extension, BTW - it's sparse) is basically
> > "I know better; the code is right, so STFU already".  *IF* counters.count_...
> > is really little-endian 32bit, then why isn't it declared that way?  And if
> > it's host-endian, you've just papered over a real bug here.
> > 
> > As a general rule "fix" doesn't mean "tell it to shut up"...
> > 
> 
> Thanks for the comments, I have updated  but I have a mixed mind on the 
> __le32. I have to read more about it. 
> 
> I would appreciate if you can comment again on the update.

From the look at the driver, it seems that all these counters are a part of
structure that is read from the hardware and only used as little-endian.
So just declare all fields in struct hif_mib_extended_count_table as
__le32; easy enough.  Looking a bit further, the same goes for
struct hif_mib_bcn_filter_table ->num_of_info_elmts
struct hif_mib_keep_alive_period ->keep_alive_period (__le16)
struct hif_mib_template_frame ->frame_length (__le16)
struct hif_mib_set_association_mode ->basic_rate_set (__le32)
struct hif_req_update_ie ->num_i_es (__le16)
struct hif_req_write_mib ->mib_id, ->length (__le16 both)
struct hif_req_read_mib ->mib_id (__le16)
struct hif_req_configuration ->length (__le16)

With those annotated we are left with

drivers/staging/wfx/bh.c:73:35: warning: incorrect type in argument 1 (different base types)
drivers/staging/wfx/bh.c:73:35:    expected restricted __le16 const [usertype] *p
drivers/staging/wfx/bh.c:73:35:    got unsigned short [usertype] *
drivers/staging/wfx/bh.c:106:41: warning: cast to restricted __le32
drivers/staging/wfx/bh.c:175:22: warning: cast to restricted __le16
drivers/staging/wfx/hwio.c:199:16: warning: cast from restricted __le32
drivers/staging/wfx/hwio.c:199:14: warning: incorrect type in assignment (different base types)
drivers/staging/wfx/hwio.c:199:14:    expected unsigned int [usertype]
drivers/staging/wfx/hwio.c:199:14:    got restricted __le32 [usertype]
drivers/staging/wfx/hif_tx.c:36:18: warning: incorrect type in assignment (different base types)
drivers/staging/wfx/hif_tx.c:36:18:    expected unsigned short [usertype] len
drivers/staging/wfx/hif_tx.c:36:18:    got restricted __le16 [usertype]
drivers/staging/wfx/data_tx.c:646:22: warning: incorrect type in assignment (different base types)
drivers/staging/wfx/data_tx.c:646:22:    expected unsigned short [usertype] len
drivers/staging/wfx/data_tx.c:646:22:    got restricted __le16 [usertype]
drivers/staging/wfx/hif_tx_mib.h:111:27: warning: incorrect type in initializer (different base types)
drivers/staging/wfx/hif_tx_mib.h:111:27:    expected unsigned int [usertype] enable
drivers/staging/wfx/hif_tx_mib.h:111:27:    got restricted __le32 [usertype]
drivers/staging/wfx/hif_tx_mib.h:112:30: warning: incorrect type in initializer (different base types)
drivers/staging/wfx/hif_tx_mib.h:112:30:    expected unsigned int [usertype] bcn_count
drivers/staging/wfx/hif_tx_mib.h:112:30:    got restricted __le32 [usertype]
drivers/staging/wfx/hif_tx_mib.h:34:38: warning: incorrect type in initializer (different base types)
drivers/staging/wfx/hif_tx_mib.h:34:38:    expected unsigned char [usertype] wakeup_period_max
drivers/staging/wfx/hif_tx_mib.h:34:38:    got restricted __le16 [usertype]
drivers/staging/wfx/main.c:108:39: warning: incorrect type in initializer (different base types)
drivers/staging/wfx/main.c:108:39:    expected restricted __le16 [usertype] rx_highest
drivers/staging/wfx/main.c:108:39:    got int
drivers/staging/wfx/./traces.h:155:1: warning: incorrect type in argument 1 (different base types)
drivers/staging/wfx/./traces.h:155:1:    expected restricted __le16 const [usertype] *p
drivers/staging/wfx/./traces.h:155:1:    got unsigned short [usertype] *
drivers/staging/wfx/./traces.h:155:1: warning: incorrect type in argument 1 (different base types)
drivers/staging/wfx/./traces.h:155:1:    expected restricted __le16 const [usertype] *p
drivers/staging/wfx/./traces.h:155:1:    got unsigned short [usertype] *


and that's where the real bugs start to show up; leaving the misbegotten
forest of macros in misbegotten tracing shite aside, we have this:

static const struct ieee80211_supported_band wfx_band_2ghz = {
        .channels = wfx_2ghz_chantable,
        .n_channels = ARRAY_SIZE(wfx_2ghz_chantable),
        .bitrates = wfx_rates,
        .n_bitrates = ARRAY_SIZE(wfx_rates),
        .ht_cap = {
                // Receive caps
                .cap = IEEE80211_HT_CAP_GRN_FLD | IEEE80211_HT_CAP_SGI_20 |
                       IEEE80211_HT_CAP_MAX_AMSDU | (1 << IEEE80211_HT_CAP_RX_STBC_SHIFT),
                .ht_supported = 1,
                .ampdu_factor = IEEE80211_HT_MAX_AMPDU_16K,
                .ampdu_density = IEEE80211_HT_MPDU_DENSITY_NONE,
                .mcs = {
                        .rx_mask = { 0xFF }, // MCS0 to MCS7
                        .rx_highest = 65,
drivers/staging/wfx/main.c:108:39: refering to this initializer.
Sparse say that it expects rx_highest to be __le16.  And that's
not a driver-specific structure; it's generic ieee80211 one.  Which
says
struct ieee80211_mcs_info {
        u8 rx_mask[IEEE80211_HT_MCS_MASK_LEN];
        __le16 rx_highest;
        u8 tx_params;
        u8 reserved[3];
} __packed;
and grepping for rx_highest through the tree shows that everything else
is treating it as little-endian 16bit.

Almost certainly a bug on big-endian hosts; should be .rx_highest = cpu_to_le16(65),
instead.

Looking for more low-hanging fruits, we have
static int indirect_read32_locked(struct wfx_dev *wdev, int reg, u32 addr, u32 *val)
{
        int ret;
        __le32 *tmp = kmalloc(sizeof(u32), GFP_KERNEL);

        if (!tmp)
                return -ENOMEM;
        wdev->hwbus_ops->lock(wdev->hwbus_priv);
        ret = indirect_read(wdev, reg, addr, tmp, sizeof(u32));
        *val = cpu_to_le32(*tmp);
        _trace_io_ind_read32(reg, addr, *val);
        wdev->hwbus_ops->unlock(wdev->hwbus_priv);
        kfree(tmp);
        return ret;
}
with warnings about val = cpu_to_le32(*tmp); fair enough, since *val is
host-endian (u32) and *tmp - little-endian.  Trivial misannotation -
it should've been le32_to_cpu(), not cpu_to_le32().  Same mapping on
all CPUs we are ever likely to support, so it's just a misannotation,
not a bug per se.

drivers/staging/wfx/hif_tx_mib.h:34:38: warning: incorrect type in initializer (different base types)
drivers/staging/wfx/hif_tx_mib.h:34:38:    expected unsigned char [usertype] wakeup_period_max
drivers/staging/wfx/hif_tx_mib.h:34:38:    got restricted __le16 [usertype]

is about
static inline int hif_set_beacon_wakeup_period(struct wfx_vif *wvif,
                                               unsigned int dtim_interval,
                                               unsigned int listen_interval) 
{
        struct hif_mib_beacon_wake_up_period val = {
                .wakeup_period_min = dtim_interval,
                .receive_dtim = 0,
                .wakeup_period_max = cpu_to_le16(listen_interval),
        };
and struct hif_mib_beacon_wake_up_period has wakeup_period_max declared
as uint8_t.  We are shoving a le16 value into it.  Almost certain bug -
that will result in the listen_interval % 256 on litte-endian host and
listen_interval / 256 on big-endian one.  Looking at the callers to
see what's actually passed as listen_interval shows only
        hif_set_beacon_wakeup_period(wvif, wvif->dtim_period, wvif->dtim_period);
and dtim_period in *wvif (struct wfx_vif) can be assigned 0, 1 or
values coming from struct ieee80211_tim_ie ->dtim_period or
struct ieee80211_bss_conf ->dtim_period, 8bit in either structure.

In other words, the value stored in val.wakeup_period_max will be
always zero on big-endian hosts.  Definitely bogus, should just
store that (8bit) value as-is; cpu_to_le16() is wrong here.

Next piece of fun:
static inline int hif_beacon_filter_control(struct wfx_vif *wvif,
                                            int enable, int beacon_count)
{
        struct hif_mib_bcn_filter_enable arg = {   
                .enable = cpu_to_le32(enable),
                .bcn_count = cpu_to_le32(beacon_count),
        };
        return hif_write_mib(wvif->wdev, wvif->id,
                             HIF_MIB_ID_BEACON_FILTER_ENABLE, &arg, sizeof(arg));
}
Sounds like ->enable and ->bcn_count should both be __le32, which makes
sense since the structs passed to hardware appear to be fixed-endian on
that thing.  However, annotating them as such adds warnigns:
drivers/staging/wfx/sta.c:246:35: warning: incorrect type in assignment (different base types)
drivers/staging/wfx/sta.c:246:35:    expected restricted __le32 [assigned] [usertype] bcn_count
drivers/staging/wfx/sta.c:246:35:    got int
drivers/staging/wfx/sta.c:249:32: warning: incorrect type in assignment (different base types)
drivers/staging/wfx/sta.c:249:32:    expected restricted __le32 [assigned] [usertype] enable
drivers/staging/wfx/sta.c:249:32:    got int
drivers/staging/wfx/sta.c:253:32: warning: incorrect type in assignment (different base types)
drivers/staging/wfx/sta.c:253:32:    expected restricted __le32 [assigned] [usertype] enable
drivers/staging/wfx/sta.c:253:32:    got int
drivers/staging/wfx/sta.c:262:62: warning: incorrect type in argument 2 (different base types)
drivers/staging/wfx/sta.c:262:62:    expected int enable
drivers/staging/wfx/sta.c:262:62:    got restricted __le32 [assigned] [usertype] enable
drivers/staging/wfx/sta.c:262:78: warning: incorrect type in argument 3 (different base types)
drivers/staging/wfx/sta.c:262:78:    expected int beacon_count
drivers/staging/wfx/sta.c:262:78:    got restricted __le32 [assigned] [usertype] bcn_count

All in the same function (wfx_update_filtering()) and we really do store
host-endian values in those (first 3 places).  In the last one we pass
them to hif_beacon_filter_control(), which does expect host-endian.
And that's the only thing we do to the instance of hif_mib_bcn_filter_enable
in there...

Possible solutions:
	1) store them little-endian there, pass to hif_beacon_filter_control()
already l-e, get rid of cpu_to_le32() in the latter.
	2) store them little-endian, pass the entire pointer to struct
instead of forming it again in hif_beacon_filter_control()
	3) don't pretend that the objects in hif_beacon_filter_control()
and in wfx_update_filtering() are of the same type (different layouts on
big-endian) and replace the one in the caller with two local variables.
My preference would be (3), as in
diff --git a/drivers/staging/wfx/hif_api_mib.h b/drivers/staging/wfx/hif_api_mib.h
index 5ed7561c7443..3eaf4affaa5d 100644
--- a/drivers/staging/wfx/hif_api_mib.h
+++ b/drivers/staging/wfx/hif_api_mib.h
@@ -273,8 +273,8 @@ enum hif_beacon_filter {
 };
 
 struct hif_mib_bcn_filter_enable {
-	uint32_t   enable;
-	uint32_t   bcn_count;
+	__le32   enable;
+	__le32   bcn_count;
 } __packed;
 
 struct hif_mib_group_seq_counter {
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 93f3739b5f3a..f623ff5b7a02 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -216,7 +216,6 @@ void wfx_update_filtering(struct wfx_vif *wvif)
 	bool is_sta = wvif->vif && NL80211_IFTYPE_STATION == wvif->vif->type;
 	bool filter_bssid = wvif->filter_bssid;
 	bool fwd_probe_req = wvif->fwd_probe_req;
-	struct hif_mib_bcn_filter_enable bf_ctrl;
 	struct hif_ie_table_entry filter_ies[] = {
 		{
 			.ie_id        = WLAN_EID_VENDOR_SPECIFIC,
@@ -237,21 +236,22 @@ void wfx_update_filtering(struct wfx_vif *wvif)
 		}
 	};
 	int n_filter_ies;
+	unsigned enable, bcn_count;
 
 	if (wvif->state == WFX_STATE_PASSIVE)
 		return;
 
 	if (wvif->disable_beacon_filter) {
-		bf_ctrl.enable = 0;
-		bf_ctrl.bcn_count = 1;
+		enable = 0;
+		bcn_count = 1;
 		n_filter_ies = 0;
 	} else if (!is_sta) {
-		bf_ctrl.enable = HIF_BEACON_FILTER_ENABLE | HIF_BEACON_FILTER_AUTO_ERP;
-		bf_ctrl.bcn_count = 0;
+		enable = HIF_BEACON_FILTER_ENABLE | HIF_BEACON_FILTER_AUTO_ERP;
+		bcn_count = 0;
 		n_filter_ies = 2;
 	} else {
-		bf_ctrl.enable = HIF_BEACON_FILTER_ENABLE;
-		bf_ctrl.bcn_count = 0;
+		enable = HIF_BEACON_FILTER_ENABLE;
+		bcn_count = 0;
 		n_filter_ies = 3;
 	}
 
@@ -259,7 +259,7 @@ void wfx_update_filtering(struct wfx_vif *wvif)
 	if (!ret)
 		ret = hif_set_beacon_filter_table(wvif, n_filter_ies, filter_ies);
 	if (!ret)
-		ret = hif_beacon_filter_control(wvif, bf_ctrl.enable, bf_ctrl.bcn_count);
+		ret = hif_beacon_filter_control(wvif, enable, bcn_count);
 	if (!ret)
 		ret = wfx_set_mcast_filter(wvif, &wvif->mcast_filter);
 	if (ret)

but that's a matter of taste.

Next is bx.c warning about __le32; that's about num_tx_count being fed to cpu_to_le32().
grepping for that thing results in
drivers/staging/wfx/bh.c:106:                   release_count = le32_to_cpu(((struct hif_cnf_multi_transmit *)hif->body)->num_tx_confs);
drivers/staging/wfx/hif_api_cmd.h:316:  uint32_t   num_tx_confs;
drivers/staging/wfx/hif_rx.c:78:        int count = body->num_tx_confs;
which is troubling - the first line (in rx_helper()) expects to find
a little-endian value in that field, while the last (in hif_multi_tx_confirm())
- a host-endian, with nothing in sight that might account for conversion
from one to another.

Let's look at the call chains: hif_multi_tx_confirm() is called only as
hif_handlers[...]->handler(), which happens in in wfx_handle_rx().
The call is
                                hif_handlers[i].handler(wdev, hif, hif->body);
and hif has come from
        struct hif_msg *hif = (struct hif_msg *) skb->data;
wfx_handle_rx() is called by the same rx_helper()...  skb is created by
rx_helper() and apparently filled by the call
        if (wfx_data_read(wdev, skb->data, alloc_len))
                goto err;
right next to the allocation... and prior to the
                   release_count = le32_to_cpu(((struct hif_cnf_multi_transmit *)hif->body)->num_tx_confs);
where we expect little-endian, with nothing to modify the skb contents
between that and the call of wfx_handle_rx().  hif in rx_helper() points
to the same place - skb->data.  OK, we almost certainly have a bug here.

That thing allocates a packet and fills it with incoming data.  Then
it parses the damn thing, apparently treating the same field of the
incoming as little-endian in one place and host-endian in another.
In principle it's possible that the rest of the packet determines
which one it is, but by the look of that code both places are
hit if and only if hif->id is equal to HIF_CNF_ID_MULTI_TRANSMIT.
It *can't* be correct on big-endian.  Not even theoretically.

And since it's over-the-wire data, I would expect it to be fixed-endian.
That needs to be confirmed with the driver's authors and/or direct
experiment on big-endian host, but I strongly suspect that the right
fix is to have
        int count = le32_to_cpu(body->num_tx_confs);
in hif_multi_tx_confirm() (and num_tx_confs annotated as __le32).

HOWEVER, that opens another nasty can of worms.  We have
        struct hif_cnf_tx *buf_loc = (struct hif_cnf_tx *) &body->tx_conf_payload;
...
        for (i = 0; i < count; ++i) {
                wfx_tx_confirm_cb(wvif, buf_loc);
                buf_loc++;
        }
with count derived from the packet and body pointing into the packet.  And no
visible checks that would make sure the loop won't run out of the data we'd
actually got.

The check in rx_helper() verifies that hif->len matches the amount we'd
received; the check for ->num_tx_confs in there doesn't look like what
we'd needed (that would be offset of body.tx_conf_payload in packet +
num_tx_confs * sizeof(struct hif_cnf_multi_transmit) compared to
actual size).

So it smells like a remote buffer overrun, little-endian or not.
And at that point I would start looking for driver original authors with
some rather pointed questions about the validation of data and lack
thereof.

BTW, if incoming packets are fixed-endian, I would expect more bugs on
big-endian hosts - wfx_tx_confirm_cb() does things like
                tx_info->status.tx_time =
                arg->media_delay - arg->tx_queue_delay;
with media_delay and tx_queue_delay both being 32bit fields in the
incoming packet.  So another question to the authors (or documentation,
or direct experiments) is what endianness do various fields in the incoming
data have.  We can try and guess, but...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
