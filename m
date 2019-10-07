Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA31CE49D
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 16:05:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F08A87A72;
	Mon,  7 Oct 2019 14:04:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FmXRn0zbuL73; Mon,  7 Oct 2019 14:04:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8316F8766C;
	Mon,  7 Oct 2019 14:04:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A82951BF859
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 14:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A3B6A86418
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 14:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-eJsmahjoOK for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 14:04:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E957A8633E
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 14:04:54 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x97E3gu0044434;
 Mon, 7 Oct 2019 14:04:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=xbcpnyKJZm9lFlejVS9KtnQiN9xAAtjJHIpTaFDJ4YY=;
 b=MgvwEDpMV2XnaHCVORBJx43/QczaRA318As+q8LVFf/wdN17J0aa8ac+J0IWGjPxrNYj
 lzmVbQw48X0WgHq7WOhDKgATXP7WcSD4K1iaNN4QpbkA3gy0/ENmIkBdbqXLnkhhZL8M
 25b20d9AdQd2+SD3HMcsWacgJlm7+3H8hUsO5C7bQZfDUi2BjpaiTuOCyWsxSNd+gb/w
 gs7lYz9osbRlG/NF9QHUIKwC5lR+SvZwFCqrXQQO4OH7kiQs1037pwB0x821GpX3lMl/
 wF7lznkSe3Pn+F0/9XJiW9wEbYWt9T1QPYwQT6SdfTp1yXZ48rV2+XSq9AFqYHoZj/Qi Tg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2vek4q6whm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Oct 2019 14:04:52 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x97E3wWA153817;
 Mon, 7 Oct 2019 14:04:52 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2vf4phkpf7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Oct 2019 14:04:52 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x97E4n8q032589;
 Mon, 7 Oct 2019 14:04:49 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 07:04:48 -0700
Date: Mon, 7 Oct 2019 17:04:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH 1/5] staging: rtl8723bs: Remove set but not used variable
 'i'
Message-ID: <20191007140442.GW22609@kadam>
References: <1570352999-45790-1-git-send-email-zhengbin13@huawei.com>
 <1570352999-45790-2-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570352999-45790-2-git-send-email-zhengbin13@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910070140
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910070140
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, hdegoede@redhat.com,
 hardiksingh.k@gmail.com, colin.king@canonical.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 05:09:55PM +0800, zhengbin wrote:
> @@ -689,7 +688,7 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
>  	DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib);
> 
>  	_rtw_open_pktfile(pkt, &pktfile);
> -	i = _rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);
> +	(void)_rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);

Don't add this "(void)" here.  There is no need and it looks ugly.

	_rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
