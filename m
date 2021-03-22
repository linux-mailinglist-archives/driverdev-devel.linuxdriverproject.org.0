Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C53344AAC
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 17:10:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EBF88303C;
	Mon, 22 Mar 2021 16:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LzFom5npys1B; Mon, 22 Mar 2021 16:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB14E82F96;
	Mon, 22 Mar 2021 16:10:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBF9F1BF319
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E90A64026B
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sVb-B4SeKBVT for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 16:09:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39AD940166
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 16:09:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 637EA61974;
 Mon, 22 Mar 2021 16:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616429392;
 bh=PI/qXbUs5SvOGrg0P7aohg7TrmkzywQnPD7nUT99osw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=amM4rO4ca+yoryF9O8aRMsEiXrtoQQNhWZXxDOFOuz8OgJC9uO+8AQd640H/UutJ+
 ZHrqI5f/8WhdyFSg2RSY0SuWyIfbirhCGfUKqnVs6DCzL0GiPFG9RO7dkVPNwBOrFA
 /nZZmGQvpc78hSIohmwNk8SKvZgyCaZ1FeQtCPNI=
Date: Mon, 22 Mar 2021 17:09:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 04/11] staging: rtl8723bs: moved function prototypes out
 of core/rtw_recv.c
Message-ID: <YFjBTtxdUc3aTlBG@kroah.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
 <d46b20b33e95e9a46b147c08311d3c91181eed33.1616422773.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d46b20b33e95e9a46b147c08311d3c91181eed33.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 03:31:42PM +0100, Fabio Aiuto wrote:
> fix the following checkpatch issues:
> 
> WARNING: externs should be avoided in .c files
> 1190: FILE: drivers/staging/rtl8723bs/core/rtw_recv.c:1190:
> +signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);
> 
> and then moved all function prototypes but one in include/rtw_recv.h
> 
> Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_recv.c    | 31 +-----------
>  drivers/staging/rtl8723bs/include/rtw_recv.h | 51 ++++++++++++++++++++
>  2 files changed, 52 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
> index 1fa381663b4c..9ef2408ded57 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> @@ -305,7 +305,6 @@ struct recv_buf *rtw_dequeue_recvbuf(struct __queue *queue)
>  
>  }
>  
> -signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe);
>  signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe)
>  {
>  
> @@ -435,8 +434,6 @@ signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvfra
>  
>  }
>  
> -/* decrypt and set the ivlen, icvlen of the recv_frame */
> -union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_frame);
>  union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_frame)
>  {
>  
> @@ -527,8 +524,6 @@ union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_fr
>  	return return_packet;
>  }
>  
> -/* set the security information in the recv_frame */
> -union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame);
>  union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame)
>  {
>  	u8 *psta_addr = NULL;
> @@ -606,7 +601,6 @@ union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_fram
>  	return prtnframe;
>  }
>  
> -signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache);
>  signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache)
>  {
>  	signed int tid = precv_frame->u.hdr.attrib.priority;
> @@ -634,7 +628,6 @@ signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo
>  
>  }
>  
> -void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame);
>  void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame)
>  {
>  	unsigned char pwrbit;
> @@ -671,7 +664,6 @@ void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame
>  	}
>  }
>  
> -void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame);
>  void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame)
>  {
>  	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
> @@ -723,7 +715,6 @@ void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame)
>  	}
>  }
>  
> -void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta);
>  void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta)
>  {
>  	int sz;
> @@ -755,8 +746,6 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
>  	traffic_check_for_leave_lps(padapter, false, 0);
>  }
>  
> -signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
> -			struct sta_info **psta);
>  signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
>  			struct sta_info **psta)
>  {
> @@ -850,8 +839,6 @@ signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_f
>  	return ret;
>  }
>  
> -signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
> -		       struct sta_info **psta);
>  signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
>  		       struct sta_info **psta)
>  {
> @@ -992,8 +979,6 @@ signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_fr
>  	return ret;
>  }
>  
> -signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
> -		       struct sta_info **psta);
>  signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
>  		       struct sta_info **psta)
>  {
> @@ -1049,7 +1034,6 @@ signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_fr
>  	return ret;
>  }
>  
> -signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame);
>  signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame)
>  {
>  	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
> @@ -1186,8 +1170,6 @@ signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *
>  
>  }
>  
> -union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_frame *precv_frame);
> -signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);
>  signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame)
>  {
>  	/* struct mlme_priv *pmlmepriv = &adapter->mlmepriv; */
> @@ -1227,7 +1209,6 @@ signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *
>  
>  }
>  
> -signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame);
>  signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame)
>  {
>  	u8 bretry;
> @@ -1459,7 +1440,6 @@ static inline void dump_rx_packet(u8 *ptr)
>  	DBG_871X("#############################\n");
>  }
>  
> -signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame);
>  signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
>  {
>  	/* shall check frame subtype, to / from ds, da, bssid */
> @@ -1557,9 +1537,6 @@ signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_
>  	return retval;
>  }
>  
> -
> -/* remove the wlanhdr and add the eth_hdr */
> -signed int wlanhdr_to_ethhdr(union recv_frame *precvframe);
>  signed int wlanhdr_to_ethhdr(union recv_frame *precvframe)
>  {
>  	signed int	rmv_len;
> @@ -1886,7 +1863,6 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
>  	return  _SUCCESS;
>  }
>  
> -int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num);
>  int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
>  {
>  	struct adapter *padapter = preorder_ctrl->padapter;
> @@ -1955,7 +1931,6 @@ int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
>  	return true;
>  }
>  
> -int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe);
>  int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe)
>  {
>  	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
> @@ -2017,7 +1992,7 @@ void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u
>  		pdbgpriv->dbg_rx_ampdu_loss_count += (current_seq - prev_seq);
>  
>  }
> -int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl, int bforced);
> +
>  int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl, int bforced)
>  {
>  	struct list_head	*phead, *plist;
> @@ -2125,7 +2100,6 @@ int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctr
>  	return bPktInBuf;
>  }
>  
> -int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe);
>  int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe)
>  {
>  	int retval = _SUCCESS;
> @@ -2279,7 +2253,6 @@ void rtw_reordering_ctrl_timeout_handler(struct timer_list *t)
>  
>  }
>  
> -int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prframe);
>  int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prframe)
>  {
>  	int retval = _SUCCESS;
> @@ -2402,8 +2375,6 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
>  	return ret;
>  }
>  
> -
> -int recv_func(struct adapter *padapter, union recv_frame *rframe);

Shouldn't this just be a static function?  And same for others in here?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
