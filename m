Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 383542EAA3B
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 12:54:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33560868C6;
	Tue,  5 Jan 2021 11:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oKqXSoufrYeq; Tue,  5 Jan 2021 11:54:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D078885B9D;
	Tue,  5 Jan 2021 11:54:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D04881BF681
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 11:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B103C20349
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 11:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vspg+jVNMT7R for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 11:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id BDA1920012
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 11:54:36 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 105BmrfW133587;
 Tue, 5 Jan 2021 11:54:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=M2bss34iyTdCgUkE9jjRxCz2msDHPu7nsOY5jZS56zo=;
 b=ujc08EEk2LVWLRROByqfoV2LYYrtWBgWA7Nv8xADzivMG1khtH49K3U89wIP9VucFsk4
 z+kvjM5DcU6GKAqLgyRl/QqXVFuIU7iAniTdx1ltNlfj9xmyyMTtwconIsqacXd/VBgd
 NpTePkAycZa7De8JPcB7QkiDk0A1NNI6LwRUydPJoufapSwEHd+YbBlAAVRGYx2Y+PbI
 JeC2eM2zXCtX/S4DsOdBEHuNRUqbFimZWdNxLJbeMDs2Ug/z31XWaNTanTZftluWa5kX
 Y4s7H55MYMkB8LEswJKoBdVFXWRDgEABFDjoNPiuJ7k+UI5qmDeN0Vhvq+h65lfYLiGA iA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 35tgskre9r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 05 Jan 2021 11:54:29 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 105BoLLF056623;
 Tue, 5 Jan 2021 11:54:29 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 35uxnsj6ht-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 05 Jan 2021 11:54:28 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 105BsRbV018087;
 Tue, 5 Jan 2021 11:54:27 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 05 Jan 2021 11:54:26 +0000
Date: Tue, 5 Jan 2021 14:52:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: jovin555 <jovin555@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Declared file operation with
 const keyword
Message-ID: <20210105115233.GA2809@kadam>
References: <20201228051301.14983-1-jovin555@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201228051301.14983-1-jovin555@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=940 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101050075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 malwarescore=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 adultscore=0 suspectscore=0 mlxlogscore=964
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101050075
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
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 28, 2020 at 12:13:00AM -0500, jovin555 wrote:
> Warning found by checkpatch.pl script.
> 
> Signed-off-by: jovin555 <jovin555@gmail.com>

Your Mama didn't name you "jovin555".  You need to use your real name
like signing a legal document.  Same for the "From:" header.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
