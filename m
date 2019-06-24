Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E7E51011
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 17:13:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 857CE87475;
	Mon, 24 Jun 2019 15:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zqtHf4Ad7cKZ; Mon, 24 Jun 2019 15:13:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08D7486963;
	Mon, 24 Jun 2019 15:13:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D62B1BF232
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 15:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5AC1384DDD
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 15:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aMZhKmah8vYr for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 15:13:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD44E84C3C
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 15:13:35 +0000 (UTC)
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5OEwZmh004931
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 11:13:34 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2tb0hrss13-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 11:13:34 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <devel@driverdev.osuosl.org> from <maier@linux.ibm.com>;
 Mon, 24 Jun 2019 16:13:32 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 24 Jun 2019 16:13:26 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5OFDPht43974882
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 15:13:25 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5A448AE053;
 Mon, 24 Jun 2019 15:13:25 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7827FAE045;
 Mon, 24 Jun 2019 15:13:24 +0000 (GMT)
Received: from oc4120165700.ibm.com (unknown [9.152.98.199])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon, 24 Jun 2019 15:13:24 +0000 (GMT)
Subject: Re: [PATCH V5 10/16] s390: zfcp_fc: use sg helper to operate
 scatterlist
To: Ming Lei <ming.lei@redhat.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <20190618013757.22401-11-ming.lei@redhat.com>
From: Steffen Maier <maier@linux.ibm.com>
Date: Mon, 24 Jun 2019 17:13:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618013757.22401-11-ming.lei@redhat.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19062415-0028-0000-0000-0000037D2117
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19062415-0029-0000-0000-0000243D3EE9
Message-Id: <95bfa1fb-d0eb-fc61-ecc0-001ae52a326f@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-24_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906240122
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
Cc: Michael Schmitz <schmitzmic@gmail.com>, devel@driverdev.osuosl.org,
 Hannes Reinecke <hare@suse.com>, Benjamin Block <bblock@linux.ibm.com>,
 Bart Van Assche <bvanassche@acm.org>, linux-s390@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Ming,

On 6/18/19 3:37 AM, Ming Lei wrote:
> Use the scatterlist iterators and remove direct indexing of the
> scatterlist array.
> 
> This way allows us to pre-allocate one small scatterlist, which can be
> chained with one runtime allocated scatterlist if the pre-allocated one
> isn't enough for the whole request.
> 
> Cc: Steffen Maier <maier@linux.ibm.com>
> Cc: Benjamin Block <bblock@linux.ibm.com>
> Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: linux-s390@vger.kernel.org
> Acked-by: Benjamin Block <bblock@linux.ibm.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>   drivers/s390/scsi/zfcp_fc.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/s390/scsi/zfcp_fc.c b/drivers/s390/scsi/zfcp_fc.c
> index 33eddb02ee30..b018b61bd168 100644
> --- a/drivers/s390/scsi/zfcp_fc.c
> +++ b/drivers/s390/scsi/zfcp_fc.c
> @@ -620,7 +620,7 @@ static void zfcp_fc_sg_free_table(struct scatterlist *sg, int count)
>   {
>   	int i;
>   
> -	for (i = 0; i < count; i++, sg++)
> +	for (i = 0; i < count; i++, sg = sg_next(sg))
>   		if (sg)
>   			free_page((unsigned long) sg_virt(sg));
>   		else
> @@ -641,7 +641,7 @@ static int zfcp_fc_sg_setup_table(struct scatterlist *sg, int count)
>   	int i;
>   
>   	sg_init_table(sg, count);
> -	for (i = 0; i < count; i++, sg++) {
> +	for (i = 0; i < count; i++, sg = sg_next(sg)) {
>   		addr = (void *) get_zeroed_page(GFP_KERNEL);
>   		if (!addr) {
>   			zfcp_fc_sg_free_table(sg, i);
> 

I'm still catching up with emails that came during my vacation, so I'm not 
fully up-to-date on the current state of this and how to bring in potential 
fixups on top.

I think, we also have two more (not so obvious) places in the corresponding 
response/completion code path, where we might need to introduce the proper 
iterator helper:

zfcp_fsf.c:

static int zfcp_fc_eval_gpn_ft(struct zfcp_fc_req *fc_req,
			       struct zfcp_adapter *adapter, int max_entries)
{
	struct scatterlist *sg = &fc_req->sg_rsp;
...
	/* first entry is the header */
	for (x = 1; x < max_entries && !last; x++) {
...
		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
...
		else
			acc = sg_virt(++sg);
                                       ^^^^

zfcp_dbf.c:

static u16 zfcp_dbf_san_res_cap_len_if_gpn_ft(char *tag,
					      struct zfcp_fsf_req *fsf,
					      u16 len)
{
	struct scatterlist *resp_entry = ct_els->resp;
...
	/* the basic CT_IU preamble is the same size as one entry in the GPN_FT
	 * response, allowing us to skip special handling for it - just skip it
	 */
	for (x = 1; x < max_entries && !last; x++) {
		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
...
		else
			acc = sg_virt(++resp_entry);
                                       ^^^^^^^^^^^^


What do you think?

-- 
Mit freundlichen Gruessen / Kind regards
Steffen Maier

Linux on IBM Z Development

https://www.ibm.com/privacy/us/en/
IBM Deutschland Research & Development GmbH
Vorsitzender des Aufsichtsrats: Matthias Hartmann
Geschaeftsfuehrung: Dirk Wittkopp
Sitz der Gesellschaft: Boeblingen
Registergericht: Amtsgericht Stuttgart, HRB 243294

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
