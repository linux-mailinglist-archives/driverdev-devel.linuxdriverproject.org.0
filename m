Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28148387647
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 May 2021 12:17:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AC30608BE;
	Tue, 18 May 2021 10:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6k5S4PhNp3Hz; Tue, 18 May 2021 10:17:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F50F6089C;
	Tue, 18 May 2021 10:17:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EE591BF282
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 10:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DF706089C
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 10:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PQjuw5EAP6kk for <devel@linuxdriverproject.org>;
 Tue, 18 May 2021 10:16:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FAC6607FA
 for <devel@driverdev.osuosl.org>; Tue, 18 May 2021 10:16:52 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14IAF7mh097788;
 Tue, 18 May 2021 10:16:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Dz0JFBpG2YkGnA6Kv+iRNqW5ei6j9FYbBlVBaa8JuDE=;
 b=j/msDuiXPVfGAKm6W7G3t7KrT7HSSMjxMOz3rCLqQVkbCkOrjP+dVeEk3CpLGxek+JCb
 xELI9DYOJESBCVu1u1f68s0cT3rGRGrBZhEDkQxRB00NzE0Hvr8v4RFQLSXOICeOl7Hf
 CMYbj9S6OHK9ztKMXRuAlStvDwBwDIjtCw1sgYOjNCN2BO1gvT2iz788PeoLV4ygwatv
 BiAGeO4C/LLuQceg26mcXL66lHuIw3PKSPhw8+F3leG+68ywVQhmD5tkH77Yw6pATDD5
 H6ZQlfP6KulEgX6N7gukK3Bl2MLJsM7q2g2D6gGkFFSEU4D2IsQqEGqbKtXC2jhtmtY3 2A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 38j5qr5wgu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 May 2021 10:16:40 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14IAFq2r125832;
 Tue, 18 May 2021 10:16:39 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3020.oracle.com with ESMTP id 38j6486fg2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 May 2021 10:16:39 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 14IAGcZ0132121;
 Tue, 18 May 2021 10:16:38 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 38j6486feh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 May 2021 10:16:38 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 14IAGY6b016208;
 Tue, 18 May 2021 10:16:36 GMT
Received: from kadam (/62.8.83.26) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 May 2021 10:16:34 +0000
Date: Tue, 18 May 2021 13:16:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] staging: iio: cdc: ad7746: Remove unnecessary assignment
 in ad7746_probe()
Message-ID: <20210518101626.GO1955@kadam>
References: <20210518095647.3008-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518095647.3008-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: pFFpgWCER-ethSIjiD4beJU8BUWa1bhp
X-Proofpoint-ORIG-GUID: pFFpgWCER-ethSIjiD4beJU8BUWa1bhp
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9987
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 impostorscore=0
 mlxscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105180071
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

On Tue, May 18, 2021 at 05:56:47PM +0800, Tang Bin wrote:
> In the function ad7746_probe(), the initialized value of 'ret' is unused,
> because it will be assigned by the function i2c_smbus_write_byte_data(),
> thus remove it.
> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
