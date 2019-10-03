Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64613C9F65
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 15:28:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9683585E14;
	Thu,  3 Oct 2019 13:28:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWmsnaUUXr4r; Thu,  3 Oct 2019 13:28:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7E31810F3;
	Thu,  3 Oct 2019 13:28:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57BD61BF399
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 13:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 52E6284CF3
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 13:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kFXjRVX8C-mB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 13:28:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 29FAA87814
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 13:27:54 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x93DO5lT025634;
 Thu, 3 Oct 2019 13:27:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=fqT32RdXr4sfOyqBhbEU5KGdseY8nZRgIWSz+Ok001w=;
 b=RHgPDrKmyQJh7XOWPvd/Fd2wAZPL16smIP/kcWrzbS0zPeSWbpucXVhei954sCQsC0lD
 iPE3plMNzd88iXE4o869U2XSOpCNJ0n+DLvNo5I0+ZQddiF6N2EtJPozBYkCE3K0LzQk
 8F70qlVDmLLI3bhIh9pe9qlgEGoV+QpZxNm5r81jHttvZgSnhZBaeEUtFda631I5lrtX
 Q85cDSCT7waFsvBKka3z3dr3gFAOyLtkTL4b2qpRuVurNLQ7HfhRi6XUrawP8ftu7Dyq
 ZxSiHG/1U6NXwENhGOgNXe1y4nEOChCHheOt6SWRjSXoaHN4piYE+OWX3XpcYWsAiUqw CQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2va05s3xff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Oct 2019 13:27:50 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x93DOW94058030;
 Thu, 3 Oct 2019 13:27:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vc9dnu5bn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Oct 2019 13:27:49 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x93DQntO016149;
 Thu, 3 Oct 2019 13:26:49 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 03 Oct 2019 06:26:49 -0700
Date: Thu, 3 Oct 2019 16:26:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: fix boundary condition for n
Message-ID: <20191003132642.GS29696@kadam>
References: <20191002170518.GA1688@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002170518.GA1688@SARKAR>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9398
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=893
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910030126
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9398
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=991 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910030126
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 florian.c.schilhabel@googlemail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 10:35:19PM +0530, Rohit Sarkar wrote:
> Now that snprintf is replaced by scnprintf n >= MAX_WPA_IE_LEN doesn't
> make sense as the maximum value n can take is MAX_WPA_IE_LEN.
> 
> Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> ---

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
