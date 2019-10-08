Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 099DDCF915
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:01:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8930F226DB;
	Tue,  8 Oct 2019 12:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H30RS9K9zSRp; Tue,  8 Oct 2019 12:01:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 775642010E;
	Tue,  8 Oct 2019 12:01:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EA2A1BF2C4
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2530287632
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vcosg++Yktun for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:01:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F9FA8758C
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:01:35 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98BxTvQ106900;
 Tue, 8 Oct 2019 12:01:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=5OOQQoMP5M7pfQCwNLUFb0PmrXeN3ZnqGaV2mHo830o=;
 b=f6JAs83oegGIJYiemESAvutFpfcpL02t5XhnSeYWzVU5uV6fQGVBMfGQIf9Cbs3Gr0Vb
 SzBD+jCc66siEIvmi3eSBDHWbsIJjySo96yNfpTK+RG+x6WdubJxEmByffavP0H2ziEy
 ulvCNNmqeTDNnrpCR8pkmlogY6dCXZZJrb+scGQV/TDscUTzaAbafkJqq92qGJ/oawWl
 qpSy6fsD99PFVCQmgCgfY6JN+ArLiGYu47IbAAj0bqzGZAWdB7b8chdWsfBpdPG2y3Yy
 +4GSjQt3RnYqSWzu7blZGG+bGdz7kys8wrzk5JhCKW1FdsEz3ARAAjXaptjrKuW6nU6n tA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2vek4qcsfn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 12:01:27 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98BwGl3022146;
 Tue, 8 Oct 2019 12:01:27 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2vg20656gj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 12:01:26 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x98C1PY1006067;
 Tue, 8 Oct 2019 12:01:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Oct 2019 05:01:25 -0700
Date: Tue, 8 Oct 2019 15:01:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 4/7] staging: wfx: correctly cast data on big-endian
 targets
Message-ID: <20191008120116.GF25098@kadam>
References: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
 <20191008094232.10014-5-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008094232.10014-5-Jerome.Pouiller@silabs.com>
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
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 09:43:00AM +0000, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> When built for a big-endian target, original code caused error:
> =

>     include/uapi/linux/swab.h:242:29: note: expected '__u32 * {aka unsign=
ed int *}' but argument is of type 'struct hif_mib_protected_mgmt_policy *'
> =

> Fixes: f95a29d40782 ("staging: wfx: add HIF commands helpers")
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/hif_tx_mib.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/wfx/hif_tx_mib.h b/drivers/staging/wfx/hif_t=
x_mib.h
> index 167c5dec009f..4f132348f5fa 100644
> --- a/drivers/staging/wfx/hif_tx_mib.h
> +++ b/drivers/staging/wfx/hif_tx_mib.h
> @@ -145,7 +145,7 @@ static inline int hif_set_mfp(struct wfx_vif *wvif, b=
ool capable, bool required)
>  	}
>  	if (!required)
>  		val.unpmf_allowed =3D 1;
> -	cpu_to_le32s(&val);
> +	cpu_to_le32s((uint32_t *) &val);

Again, this is fine for now, but in the future there shouldn't be a
space after the cast.  It's to mark that it's a high precedence
operation.

	cpu_to_le32s((uint32_t *)&val);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
