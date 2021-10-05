Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 936FD422094
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 10:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8D7B83CE9;
	Tue,  5 Oct 2021 08:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJcmLI0c3_Ef; Tue,  5 Oct 2021 08:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC43983B6D;
	Tue,  5 Oct 2021 08:21:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E591E1BF398
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 08:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1C9983B6D
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 08:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3T2fqPPxU4oA for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 08:21:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B309E83B3F
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 08:21:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CD36061352;
 Tue,  5 Oct 2021 08:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1633422089;
 bh=U6uwtdCtTV5GlnkRiRrDaVENdO7F58zTTa2A8saHYBs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SAZFp7+jmCcTt6F6GBOXHjV7ZR+QQ29xj949iJyGjpEx3IvUT84zr2peZxssWnfn7
 zmOivEkMocoZolUo6djRaD2zkqxuS71rA96nRUjXqd2UAPjVbJp+172s2axg2JL2gj
 Jkr9ADll/Nk9iyV9bwwfL2DV1KdIfC67ePX/iVxA=
Date: Tue, 5 Oct 2021 10:21:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 13/24] wfx: add hif_tx*.c/hif_tx*.h
Message-ID: <YVwLB02y67JOvoth@kroah.com>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20211001161316.w3cwsigacznjbowl@pali>
 <87tuhwf19w.fsf@codeaurora.org> <36155992.WRNEVsFkd7@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36155992.WRNEVsFkd7@pc-42>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 05, 2021 at 10:17:32AM +0200, J=E9r=F4me Pouiller wrote:
> On Tuesday 5 October 2021 08:12:27 CEST Kalle Valo wrote:
> > Pali Roh=E1r <pali@kernel.org> writes:
> > > On Friday 01 October 2021 17:17:52 J=E9r=F4me Pouiller wrote:
> > >> On Friday 1 October 2021 11:55:33 CEST Kalle Valo wrote:
> > >> > Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> > >> >
> > >> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >> > >
> > >> > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >> >
> > >> > [...]
> > >> >
> > >> > > --- /dev/null
> > >> > > +++ b/drivers/net/wireless/silabs/wfx/hif_tx_mib.h
> > >> > > @@ -0,0 +1,49 @@
> > >> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > >> > > +/*
> > >> > > + * Implementation of the host-to-chip MIBs of the hardware API.
> > >> > > + *
> > >> > > + * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
> > >> > > + * Copyright (c) 2010, ST-Ericsson
> > >> > > + * Copyright (C) 2010, ST-Ericsson SA
> > >> > > + */
> > >> > > +#ifndef WFX_HIF_TX_MIB_H
> > >> > > +#define WFX_HIF_TX_MIB_H
> > >> > > +
> > >> > > +struct wfx_vif;
> > >> > > +struct sk_buff;
> > >> > > +
> > >> > > +int hif_set_output_power(struct wfx_vif *wvif, int val);
> > >> > > +int hif_set_beacon_wakeup_period(struct wfx_vif *wvif,
> > >> > > +                              unsigned int dtim_interval,
> > >> > > +                              unsigned int listen_interval);
> > >> > > +int hif_set_rcpi_rssi_threshold(struct wfx_vif *wvif,
> > >> > > +                             int rssi_thold, int rssi_hyst);
> > >> > > +int hif_get_counters_table(struct wfx_dev *wdev, int vif_id,
> > >> > > +                        struct hif_mib_extended_count_table *ar=
g);
> > >> > > +int hif_set_macaddr(struct wfx_vif *wvif, u8 *mac);
> > >> > > +int hif_set_rx_filter(struct wfx_vif *wvif,
> > >> > > +                   bool filter_bssid, bool fwd_probe_req);
> > >> > > +int hif_set_beacon_filter_table(struct wfx_vif *wvif, int tbl_l=
en,
> > >> > > +                             const struct hif_ie_table_entry *t=
bl);
> > >> > > +int hif_beacon_filter_control(struct wfx_vif *wvif,
> > >> > > +                           int enable, int beacon_count);
> > >> > > +int hif_set_operational_mode(struct wfx_dev *wdev, enum
> > >> > > hif_op_power_mode mode);
> > >> > > +int hif_set_template_frame(struct wfx_vif *wvif, struct sk_buff=
 *skb,
> > >> > > +                        u8 frame_type, int init_rate);
> > >> > > +int hif_set_mfp(struct wfx_vif *wvif, bool capable, bool requir=
ed);
> > >> > > +int hif_set_block_ack_policy(struct wfx_vif *wvif,
> > >> > > +                          u8 tx_tid_policy, u8 rx_tid_policy);
> > >> > > +int hif_set_association_mode(struct wfx_vif *wvif, int ampdu_de=
nsity,
> > >> > > +                          bool greenfield, bool short_preamble);
> > >> > > +int hif_set_tx_rate_retry_policy(struct wfx_vif *wvif,
> > >> > > +                              int policy_index, u8 *rates);
> > >> > > +int hif_keep_alive_period(struct wfx_vif *wvif, int period);
> > >> > > +int hif_set_arp_ipv4_filter(struct wfx_vif *wvif, int idx, __be=
32 *addr);
> > >> > > +int hif_use_multi_tx_conf(struct wfx_dev *wdev, bool enable);
> > >> > > +int hif_set_uapsd_info(struct wfx_vif *wvif, unsigned long val);
> > >> > > +int hif_erp_use_protection(struct wfx_vif *wvif, bool enable);
> > >> > > +int hif_slot_time(struct wfx_vif *wvif, int val);
> > >> > > +int hif_wep_default_key_id(struct wfx_vif *wvif, int val);
> > >> > > +int hif_rts_threshold(struct wfx_vif *wvif, int val);
> > >> >
> > >> > "wfx_" prefix missing from quite a few functions.
> > >>
> > >> I didn't know it was mandatory to prefix all the functions with the
> > >> same prefix.
> > =

> > I don't know either if this is mandatory or not, for example I do not
> > have any recollection what Linus and other maintainers think of this. I
> > just personally think it's good practise to use driver prefix ("wfx_")
> > in all non-static functions.
> =

> What about structs (especially all the structs from hif_api.*.h)? Do you
> think I should also prefix them with wfx_? =


Why would they _not_ have wfx_ as a prefix if they only pertain to this
driver?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
