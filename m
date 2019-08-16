Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A81C9034C
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 15:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A24A1232A7;
	Fri, 16 Aug 2019 13:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4FFYphZiD6NJ; Fri, 16 Aug 2019 13:42:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E3BDF2324E;
	Fri, 16 Aug 2019 13:42:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07A841BF3E9
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 13:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01A1F87A6B
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 13:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gYslfcoLMs3l for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 13:42:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6091F878FE
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 13:42:08 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7GDcrU3047809;
 Fri, 16 Aug 2019 13:42:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=YfWGic/dAg3fOFFkayje3xp6vGSyQHJYYgKCOSMt1R4=;
 b=oKhRz9KXJQZeZWP9mAN3VtbPF7T3KnlqEnIKrl+aCmMOpyrCyb+zDRFQ3a0pACv1spsG
 dDTPTOWCte/DyLfDi6TiugGyErSA9NUhUeCdiF3JvxRMEIKzZZT3WywsdELCoUu2ya9c
 LWcUIN5m8pHmZAx7fYe3NCs8kdbLVedhMZ0s53M4KisgQoIu1O2pSnISSzLjXgepRfIi
 5VHf80LZFNttco54XcJqi+zKmrUR5OAdgKIALjj/2H5hSripyi9SrBLUg30mDBi2DqTp
 lfUv11Kw/SRwpTtZp7BkonOq84I3Q54iomoOxHNCzuQpsHQehW2fnmxi66Fz/qooCQ2B nQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2u9nvprp7v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 13:42:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7GDcshr092763;
 Fri, 16 Aug 2019 13:40:06 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2udgr2w4m9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 13:40:06 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7GDe4fJ032639;
 Fri, 16 Aug 2019 13:40:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 16 Aug 2019 06:40:04 -0700
Date: Fri, 16 Aug 2019 16:39:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhao Yakui <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 11/15] drivers/acrn: add the support of handling
 emulated ioreq
Message-ID: <20190816133511.GC3632@kadam>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-12-git-send-email-yakui.zhao@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565922356-4488-12-git-send-email-yakui.zhao@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908160142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908160142
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Jason Chen CJ <jason.cj.chen@intel.com>, Yin FengWei <fengwei.yin@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 16, 2019 at 10:25:52AM +0800, Zhao Yakui wrote:
> +int acrn_ioreq_create_client(unsigned short vmid,
> +			     ioreq_handler_t handler,
> +			     void *client_priv,
> +			     char *name)
> +{
> +	struct acrn_vm *vm;
> +	struct ioreq_client *client;
> +	int client_id;
> +
> +	might_sleep();
> +
> +	vm = find_get_vm(vmid);
> +	if (unlikely(!vm || !vm->req_buf)) {
> +		pr_err("acrn-ioreq: failed to find vm from vmid %d\n", vmid);
> +		put_vm(vm);
> +		return -EINVAL;
> +	}
> +
> +	client_id = alloc_client();
> +	if (unlikely(client_id < 0)) {
> +		pr_err("acrn-ioreq: vm[%d] failed to alloc ioreq client\n",
> +		       vmid);
> +		put_vm(vm);
> +		return -EINVAL;
> +	}
> +
> +	client = acrn_ioreq_get_client(client_id);
> +	if (unlikely(!client)) {
> +		pr_err("failed to get the client.\n");
> +		put_vm(vm);
> +		return -EINVAL;

Do we need to clean up the alloc_client() allocation?

regards,
dan carpenter

> +	}
> +
> +	if (handler) {
> +		client->handler = handler;
> +		client->acrn_create_kthread = true;
> +	}
> +
> +	client->ref_vm = vm;
> +	client->vmid = vmid;
> +	client->client_priv = client_priv;
> +	if (name)
> +		strncpy(client->name, name, sizeof(client->name) - 1);
> +	rwlock_init(&client->range_lock);
> +	INIT_LIST_HEAD(&client->range_list);
> +	init_waitqueue_head(&client->wq);
> +
> +	/* When it is added to ioreq_client_list, the refcnt is increased */
> +	spin_lock_bh(&vm->ioreq_client_lock);
> +	list_add(&client->list, &vm->ioreq_client_list);
> +	spin_unlock_bh(&vm->ioreq_client_lock);
> +
> +	pr_info("acrn-ioreq: created ioreq client %d\n", client_id);
> +
> +	return client_id;
> +}

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
