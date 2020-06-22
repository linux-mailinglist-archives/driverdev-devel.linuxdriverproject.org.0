Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BB8203DD6
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 19:27:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C82548942D;
	Mon, 22 Jun 2020 17:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPW8Dq7fF0sP; Mon, 22 Jun 2020 17:27:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 371D18918B;
	Mon, 22 Jun 2020 17:27:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2AFAC1BF332
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 17:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 257EE88A81
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 17:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c1YhufdOGq7c for <devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 17:27:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 65C9B856E4
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 17:27:26 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05MHBw2i189915;
 Mon, 22 Jun 2020 17:27:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Vv+E0J9dTtkKy+FdLb0C0RUISOppjSPcTPdPXapLZUk=;
 b=zVrUrjfuArBiL89tdC+WNSvBEITHQQpMY32DX/J6lnpf+/ln+IurCjz8PPu9JM9ggLvM
 5PMpCsj88bS/WIVVzPmY1pzItL1dnnAwj4uJG+pzScLhUV4+w8FBO4IxZOZlKdpFR+52
 FXw1DapRXn/R8rHzVn5Zr/lQwkS9UyJ/xpfJTtHZKTYA1pyldSwgG6IH6MTD2Xbnf9AR
 Tk4BvQ4ifl70DhuGjeBdBTwayYYDyxgebi0YDzfJN4StDg6dMcOXmJk/oToQ9nJCVuaE
 gymoRM3LprvryjHEbUqFtpHY/zDQPmMNHTiwdVlbKcLuWgqoakxn0l5gNEDBIFLpNbPg Mw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31sebb8qwy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jun 2020 17:27:25 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05MHE6KD018710;
 Mon, 22 Jun 2020 17:27:24 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 31sv7qf9yk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jun 2020 17:27:24 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05MHRNGP019484;
 Mon, 22 Jun 2020 17:27:23 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 22 Jun 2020 17:27:23 +0000
Date: Mon, 22 Jun 2020 20:27:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [bug report] staging: vchiq_arm: use list_for_each_entry when
 accessing bulk_waiter_list
Message-ID: <20200622172717.GW4282@kadam>
References: <20200619143132.GE267142@mwanda>
 <b1dd18a335934707998080f35db5b5b0a91b7935.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b1dd18a335934707998080f35db5b5b0a91b7935.camel@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9660
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006220120
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9660
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 cotscore=-2147483648
 lowpriorityscore=0 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 mlxscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006220120
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 22, 2020 at 04:56:19PM +0200, Nicolas Saenz Julienne wrote:
> Hi Dan,
> Thanks for reaching out.
> 
> On Fri, 2020-06-19 at 17:31 +0300, Dan Carpenter wrote:
> > Hello Nicolas Saenz Julienne,
> 
> Feel free to refer to me as Nicolas, but if you'd rather keep it formal the
> name is Nicolas Patricio Saenz Julienne. :P
> 

These are automatically generated emails based on your From: header.

It's very calculated to sound unnatural so that people know right away
that it's a dumb bot sending emails, not a human being.  :P  I'm so
serious.  At first people used to feel attacked personally but now
everyone is like "Ugh...  Bot spam."

regards,
dan carpenter



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
