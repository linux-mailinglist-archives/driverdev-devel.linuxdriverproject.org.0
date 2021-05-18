Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3324F387394
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 May 2021 09:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C412C40602;
	Tue, 18 May 2021 07:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B3VVT7nA205B; Tue, 18 May 2021 07:53:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D18E403DF;
	Tue, 18 May 2021 07:53:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B50D01BF2C6
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 07:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0FF9403AB
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 07:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l6ibKNvkr2ur for <devel@linuxdriverproject.org>;
 Tue, 18 May 2021 07:53:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDAD040246
 for <devel@driverdev.osuosl.org>; Tue, 18 May 2021 07:53:14 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14I7oHrD012415;
 Tue, 18 May 2021 07:53:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=urHElYJbutWMqE00Oq51FwuwQa+iY3vLFYSvQC5EKY0=;
 b=MxXhQmu5kcRVSWujV20WeIYREaiPGTqSLYnWLYl+nUu3Dne6wcpbikQVMoHNLfdP9gqI
 7c6Fm3yonPuHSfuD8AbSo5h2UhrBODApI/qek2IMxTBBNHabPADxzh8xUMdEcTlnEa2l
 uPS922MvtiqBbg6vEi1Zw6zm3WNf+f4jInHnZ5da1ZrfmZaPhm8ebY2Xxus5KzjDDjFW
 tVk0uE3s4yzZ/9QNWW8oWgR6bFAcpKfqf9NFAcj6Hphs67keAqk3UW4CFjKIhLU+1NcG
 Hu+Tg4UmJXrAmxB2vapq6bCfQhMWTNidrj/TRrDQ2+TZu+7y00ObnQsSZQE01R+/XBAX 2A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 38j3tbdgh7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 May 2021 07:53:07 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14I7nrqV106224;
 Tue, 18 May 2021 07:53:07 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3020.oracle.com with ESMTP id 38j647t4pg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 May 2021 07:53:07 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 14I7o2KV108911;
 Tue, 18 May 2021 07:53:06 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 38j647t4nh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 May 2021 07:53:06 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 14I7r28w018651;
 Tue, 18 May 2021 07:53:03 GMT
Received: from kadam (/62.8.83.26) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 May 2021 07:53:02 +0000
Date: Tue, 18 May 2021 10:52:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] staging: iio: cdc: ad7746: Fix unnecessary check and
 assignment in ad7746_probe()
Message-ID: <20210518075254.GN1955@kadam>
References: <20210517150006.8436-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517150006.8436-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-ORIG-GUID: sASiZhdDsRyHR0FhOYnKHR9UcErSbthg
X-Proofpoint-GUID: sASiZhdDsRyHR0FhOYnKHR9UcErSbthg
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9987
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0
 impostorscore=0 adultscore=0 clxscore=1011 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105180055
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 17, 2021 at 11:00:06PM +0800, Tang Bin wrote:
> @@ -730,11 +730,7 @@ static int ad7746_probe(struct i2c_client *client,
>  	if (ret < 0)
>  		return ret;
>  
> -	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
> -	if (ret)
> -		return ret;
> -
> -	return 0;
> +	return devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>  }

This sort of thing is done deliberately as a style choice...  I probably
wouldn't have written it that way myself, but there really isn't a
downside to leaving it as-is.

The unused "int ret = 0;" just introduces a static checker warning about
unused assignments and disables the static checker warning for
uninitialized variables so we want to remove that.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
