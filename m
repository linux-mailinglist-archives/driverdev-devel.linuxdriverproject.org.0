Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC5C17F54F
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 11:46:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3569787146;
	Tue, 10 Mar 2020 10:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n9q9NOyiVmk5; Tue, 10 Mar 2020 10:46:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06D6E86BA7;
	Tue, 10 Mar 2020 10:46:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7010D1BF299
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 10:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CA02883CC
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 10:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4O96RHYja1xx for <devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 10:46:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8420883BF
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 10:46:14 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02AAcoWR081573;
 Tue, 10 Mar 2020 10:46:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=1RisN3S7KM3q/8X60PBMjhXZIbFkHsb770PygEikLQM=;
 b=UcdMYQAOyUZiSFKHzyk6WZHOZfZ1jSJpCZgDUTkHTIamr9/HJdnodla4sGz/3TYPExfx
 faKxU3h/FFJmqGEpHlcpUSRWQgvw65E9LLe4YbutcmO242GFBednrEi9NP84ysSOwL5a
 oK++BuqCkNrNbKVSSnieI427QoDr5+8PY4wD6W0Fzjzsb4DlDan9MLKKdSY6gUWT/JK4
 D3dmWGD5VxLFW5btxzgSau3LqJD3zTw7G8jBcTSP4+JJt80DGUPFTPVfTibpxnCT6BnL
 B2pPLaFVSJpofP+dBatFF/utz8UfGK/AGyS3w7PyddyhQ3NEC/3Y0gF5LAVSTlUIi6YR Zw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2ym3jqmsva-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Mar 2020 10:46:10 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02AAcQYm069503;
 Tue, 10 Mar 2020 10:46:10 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2yp8nry2uf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Mar 2020 10:46:09 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02AAk8Rs026312;
 Tue, 10 Mar 2020 10:46:08 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Mar 2020 03:46:08 -0700
Date: Tue, 10 Mar 2020 13:46:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Joel Fernandes (Google)" <joel@joelfernandes.org>
Subject: Re: [RFC] ashmem: Fix ashmem shrinker nr_to_scan
Message-ID: <20200310104601.GB11561@kadam>
References: <20200306011930.99378-1-joel@joelfernandes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306011930.99378-1-joel@joelfernandes.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 phishscore=0
 spamscore=0 malwarescore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003100071
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 clxscore=1011
 priorityscore=1501 mlxscore=0 phishscore=0 mlxlogscore=999 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003100071
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 surenb@google.com, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 05, 2020 at 08:19:30PM -0500, Joel Fernandes (Google) wrote:
> nr_to_scan is the number of pages to be freed however ashmem doesn't
> discount nr_to_scan correctly as it frees ranges. It should be
> discounting them by pages than by ranges. Correct the issue.
> 
> Cc: surenb@google.com
> Signed-off-by: Joel Fernandes (Google) <joel@joelfernandes.org>
> ---
>  drivers/staging/android/ashmem.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 5891d0744a760..cb525ea6db98a 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -458,6 +458,8 @@ ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
>  		lru_del(range);
>  
>  		freed += range_size(range);
> +		sc->nr_to_scan -=  range_size(range);
                                 ^^
Two space characters.

In the old code we didn't *really* have to worry about sc->nr_to_scan
dropping to negative, but now we do.  ->nr_to_scan is unsigned so it
would be a high positive value now so it's maybe a forever loop?  I'm
too lazy to verify...

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
