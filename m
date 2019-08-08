Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3051B86174
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 14:16:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 50A9F20365;
	Thu,  8 Aug 2019 12:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 514QjlbIHeD2; Thu,  8 Aug 2019 12:16:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 816E520439;
	Thu,  8 Aug 2019 12:16:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EFEC1BF3FD
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 12:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B01986A4F
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 12:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLdhxaG5tq13 for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 12:16:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A495A86A40
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 12:16:36 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x78CE3kW146307;
 Thu, 8 Aug 2019 12:16:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=sWSfRUsmZMthwzM0SgoW6JA297XIwV5PcFZ0Ste+GU4=;
 b=l9qIXEy94jjmkPks/ziDX9E+6dn32dT3Thq8uGvL3pDNLDMrEt3ufhHVah8TEhy9ZQHe
 4KtCLO4OwuUstMXCJ6zgfay+28/e8jlthJWSa6q/xOu+DbiCIeglqylrfAyQhkot1g0l
 1EOCYYQF4ceWeQccHughz36/RaLBokOQIRoUH30Hq+xTtWVIcn3BYdB3lXmUnMNuqNXg
 0EvF94pOr2q8voufH0Wa8AlOY20gnTv2rmVEaSPOJ8BPOXwuhrzZ2Bx/S0/3+cYW6WwC
 OzRzIf0WkxNH+0mYfnlv4wms4hRL7fCZcQWiCw7TwKZXrfL2ILwKDgwniBCNZ6a+kqLF xA== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=sWSfRUsmZMthwzM0SgoW6JA297XIwV5PcFZ0Ste+GU4=;
 b=eEfqfLw/d0RNTmCCB7rNo3D9sEqFcaioWhMNAK+qmLUH2NrwuFBYw57CpBseEBcCsB+9
 L7UEA7aMi9JvsXZDU9VzKFC9SCLhuxqrUFk/WLVjSCTAF3crVzUWJdlSIXuyGyamdLz3
 /tQf8a+WUrPtb5ccQAIayVOQJWk+8uvkn5aXzQ2fN33Hvh00FXQMi3CWEMKWsr0oGHTt
 2trhLmzWzvjF+B57N9TsHB2ImjVc1sZk6LuKwIhlKbCA7T4CvLw4fiBNXN6+cQIFyUuc
 K7DpPhBBpgjzl+ggzsJJ73WnG8okoFPqAopuM4GoHG3Vs8MdHLhWGJL9n4g/tNcVFPgp Bg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2u8has8v5p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 08 Aug 2019 12:16:35 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x78CDBc4108248;
 Thu, 8 Aug 2019 12:16:34 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2u763k8gvg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 08 Aug 2019 12:16:34 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x78CGWq5000894;
 Thu, 8 Aug 2019 12:16:32 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 08 Aug 2019 05:16:31 -0700
Date: Thu, 8 Aug 2019 15:16:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 07/10] staging: rtl8712: init_drv_sw(): Change return
 values
Message-ID: <20190808121623.GO1974@kadam>
References: <20190808064012.12661-1-nishkadg.linux@gmail.com>
 <20190808064012.12661-7-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808064012.12661-7-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9342
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908080129
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9342
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908080129
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 08, 2019 at 12:10:09PM +0530, Nishka Dasgupta wrote:
> -	if (_r8712_init_sta_priv(&padapter->stapriv))
> -		return _FAIL;
> +	ret = _r8712_init_sta_priv(&padapter->stapriv);
> +	if (ret)
> +		return ret;
>  	padapter->stapriv.padapter = padapter;
>  	r8712_init_bcmc_stainfo(padapter);
>  	r8712_init_pwrctrl_priv(padapter);
>  	mp871xinit(padapter);
>  	init_default_value(padapter);
>  	r8712_InitSwLeds(padapter);
> -	return _SUCCESS;
> +	return ret;

(Please don't resend.  I'd prefer if someone addressed this in a later
patch).  It's better to "return 0;" here because that's clear without
needing to read back a few lines to see what ret is.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
