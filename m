Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3A5CF90C
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 13:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF11A87683;
	Tue,  8 Oct 2019 11:59:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p0WFoBRzlCAn; Tue,  8 Oct 2019 11:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 797338765A;
	Tue,  8 Oct 2019 11:59:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 272DC1BF255
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 11:59:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 241EF85585
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 11:59:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MAzXNKUAPUlI for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 11:59:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EF6B584FF9
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 11:59:37 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98BxFBu106757;
 Tue, 8 Oct 2019 11:59:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=OGOkAlNA6LggrLMDrHaCp6Y9p8n1TBUDmTBrqzZFoKM=;
 b=k2VwK7WqwLKkuGuaRfBfCvZQeMRUdCvQU97XC2c3kZ3B3Ba2X0NLSnlTk0p/OXCt6B/t
 h8YN8s8oZ15p7KwDb3ad2OR1q0Q8HRvgCRgKcoSU92zBCqUGic9I9dTDjEUzaXucgUQp
 V5lU4KfX9svKnb78g7ZS30XfPboP3FI8Tbe6c0QsXnFtLvxGJe7GAolIoih+QHagYiZ0
 B8gR9gNHRyq4WFGBCjr1Ji0EC8CMBshjxOjIYbxXNDPUtEJCzwOCsRrsoSHYgYlm0fWX
 SZ4hw8fFCgxk9s2kBSeH8mjBIri34256M1YAC19F8Zh9grHG4mS4cPSkiUxNo+y4tXIm jQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2vek4qcs64-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 11:59:36 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98BwEXI022092;
 Tue, 8 Oct 2019 11:59:36 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vg20652rh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 11:59:35 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x98BxYQe002725;
 Tue, 8 Oct 2019 11:59:34 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Oct 2019 04:59:34 -0700
Date: Tue, 8 Oct 2019 14:59:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 1/7] staging: wfx: simplify memory allocation in
 wfx_update_filtering()
Message-ID: <20191008115927.GE25098@kadam>
References: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
 <20191008094232.10014-2-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008094232.10014-2-Jerome.Pouiller@silabs.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080117
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080117
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These patches are good.  I just have a few nits to point out for future
reference.

On Tue, Oct 08, 2019 at 09:42:58AM +0000, Jerome Pouiller wrote:
>  static inline int hif_set_beacon_filter_table(struct wfx_vif *wvif,
> -					      struct hif_mib_bcn_filter_table *ft)
> +					      int tbl_len,
> +					      struct hif_ie_table_entry *tbl)
>  {
> -	size_t buf_len = struct_size(ft, ie_table, ft->num_of_info_elmts);
> +	int ret;
> +	struct hif_mib_bcn_filter_table *val;
> +	int buf_len = struct_size(val, ie_table, tbl_len);

This is fine for now, but since this is networking code, in the future
could you write your declarations in reverse Christmas tree order?

	long laskdfjasldfj asldfkj aslkdfj alskdfj askldfj;
	mid asdfasdflkajdflasjdf lkasjdf;
	short asdfasd;
	shortest i;

>  
> -	cpu_to_le32s(&ft->num_of_info_elmts);
> -	return hif_write_mib(wvif->wdev, wvif->id,
> -			     HIF_MIB_ID_BEACON_FILTER_TABLE, ft, buf_len);

[ snip ]

> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 2855d14a709c..12198b8f3685 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -217,14 +217,13 @@ void wfx_update_filtering(struct wfx_vif *wvif)
>  	bool filter_bssid = wvif->filter_bssid;
>  	bool fwd_probe_req = wvif->fwd_probe_req;
>  	struct hif_mib_bcn_filter_enable bf_ctrl;
> -	struct hif_mib_bcn_filter_table *bf_tbl;
> -	struct hif_ie_table_entry ie_tbl[] = {
> +	struct hif_ie_table_entry filter_ies[] = {
>  		{
>  			.ie_id        = WLAN_EID_VENDOR_SPECIFIC,
>  			.has_changed  = 1,
>  			.no_longer    = 1,
>  			.has_appeared = 1,
> -			.oui         = { 0x50, 0x6F, 0x9A},
> +			.oui          = { 0x50, 0x6F, 0x9A },

Please don't do unrelated white space changes in their own patches.

>  		}, {
>  			.ie_id        = WLAN_EID_HT_OPERATION,
>  			.has_changed  = 1,

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
