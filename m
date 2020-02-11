Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 326C3158A14
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 07:51:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4520F204D4;
	Tue, 11 Feb 2020 06:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I+CM6HPA0z5m; Tue, 11 Feb 2020 06:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D82E1204C5;
	Tue, 11 Feb 2020 06:51:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A6561BF2F0
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 06:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 274F1863DE
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 06:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q8cRQUGtvlNO for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 06:51:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7268B863D5
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 06:51:12 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01B6h9Yn146256;
 Tue, 11 Feb 2020 06:51:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=NbA8oo1HzNLa8qApBQR+oHUukViasGb/g+VlKH7qwSI=;
 b=iqYcWfeYiCmRYv5CJ6R3VSjCDsAjmmsx9y/q1KE4+5QOaxQ9spRS6RRT2GR3+1SLGEJC
 SxGOMvr4ACuKwZY1ZPUtSjJ/stblMFZkz2tqaSDHklwmqfPQUeJERRMCI1b3B7CBKHJB
 RF1ZO48vkZuSlGtpyib5qOILIhMPE5kIn/TeYrZK0+Ey5ZYrce0pyH1Wy6p3vdYe+3Cc
 Bt74LkZmyARgrYyd3J8xRkJ0f/bEjQmv2SyUeabumgPjejkDVhnZPhPYAGvvbx2zHaLe
 QMDAWY1YSolcTSxY3i4d+x+HBircGstepqpC+GFvEcW+SEPKfV4RthDeKp9zoMCgRK+g 9w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2y2p3s95aq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Feb 2020 06:51:09 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01B6kagh085237;
 Tue, 11 Feb 2020 06:51:09 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2y26q0q30b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Feb 2020 06:51:09 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01B6p8mX003743;
 Tue, 11 Feb 2020 06:51:08 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 10 Feb 2020 22:51:07 -0800
Date: Tue, 11 Feb 2020 09:51:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH 3/3] staging: wilc1000: refactor p2p action frames
 handling API's
Message-ID: <20200211065101.GC1778@kadam>
References: <20200211000652.4781-1-ajay.kathat@microchip.com>
 <20200211000652.4781-3-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211000652.4781-3-ajay.kathat@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 spamscore=0
 mlxscore=0 adultscore=0 suspectscore=1 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110048
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 malwarescore=0
 suspectscore=1 mlxlogscore=999 priorityscore=1501 clxscore=1015
 impostorscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110048
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
 johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 10, 2020 at 06:36:01PM +0000, Ajay.Kathat@microchip.com wrote:
> +	if (sta_ch == WILC_INVALID_CHANNEL)
> +		return;
>  
>  	while (index < len) {

This range checking was there in the original code, but it's not
correct.  index and len are in terms of bytes so we know that we can
read one byte from &buf[index] but we are reading a wilc_attr_entry
struct which is larger than a type.  The struct is actually flexibly
sized so this should be something like:

	while (index + sizeof(struct wilc_attr_entry) <= len) {
		e = (struct wilc_attr_entry *)&buf[index];
		if (index + sizeof(struct wilc_attr_entry) +
		    le16_to_cpu(e->attr_len) > len)
			break;

> -		if (buf[index] ==  CHANLIST_ATTR_ID)
> -			channel_list_attr_index = index;
> -		else if (buf[index] ==  OPERCHAN_ATTR_ID)
> -			op_channel_attr_index = index;
> -		index += buf[index + 1] + 3;
> +		e = (struct wilc_attr_entry *)&buf[index];
> +		if (e->attr_type == IEEE80211_P2P_ATTR_CHANNEL_LIST)
> +			ch_list_idx = index;
> +		else if (e->attr_type == IEEE80211_P2P_ATTR_OPER_CHANNEL)
> +			op_ch_idx = index;
> +		if (ch_list_idx && op_ch_idx)
> +			break;
> +		index += le16_to_cpu(e->attr_len) + sizeof(*e);
>  	}

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
