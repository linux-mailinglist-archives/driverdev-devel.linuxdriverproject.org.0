Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30409A16DA
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 12:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1C328212F;
	Thu, 29 Aug 2019 10:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mlmvc3VHbnjD; Thu, 29 Aug 2019 10:51:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 915F3872E8;
	Thu, 29 Aug 2019 10:51:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEA271BF2CA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 10:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D8F828825E
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 10:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vihEfogTmqXL for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 10:51:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8D17088254
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 10:51:40 +0000 (UTC)
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 6E4CC118B1F401EEA4AF;
 Thu, 29 Aug 2019 18:51:37 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 29 Aug 2019 18:51:37 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 29 Aug 2019 18:51:35 +0800
Date: Thu, 29 Aug 2019 18:50:48 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
Message-ID: <20190829105048.GB64893@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829101545.GC20598@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme715-chm.china.huawei.com (10.1.199.111) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Chao Yu <yuchao0@huawei.com>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Pavel Machek <pavel@denx.de>, Jan Kara <jack@suse.cz>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Thu, Aug 29, 2019 at 03:15:45AM -0700, Christoph Hellwig wrote:
> On Fri, Aug 02, 2019 at 08:53:26PM +0800, Gao Xiang wrote:
> > +static int __init erofs_init_inode_cache(void)
> > +{
> > +	erofs_inode_cachep = kmem_cache_create("erofs_inode",
> > +					       sizeof(struct erofs_vnode), 0,
> > +					       SLAB_RECLAIM_ACCOUNT,
> > +					       init_once);
> > +
> > +	return erofs_inode_cachep ? 0 : -ENOMEM;
> 
> Please just use normal if/else.  Also having this function seems
> entirely pointless.
> 
> > +static void erofs_exit_inode_cache(void)
> > +{
> > +	kmem_cache_destroy(erofs_inode_cachep);
> > +}
> 
> Same for this one.
> 
> > +static void free_inode(struct inode *inode)
> 
> Please use an erofs_ prefix for all your functions.

It is already a static function, I have no idea what is wrong here.

> 
> > +{
> > +	struct erofs_vnode *vi = EROFS_V(inode);
> 
> Why is this called vnode instead of inode?  That seems like a rather
> odd naming for a Linux file system.

I don't know anything difference of that, it is just a naming.

> 
> > +
> > +	/* be careful RCU symlink path (see ext4_inode_info->i_data)! */
> > +	if (is_inode_fast_symlink(inode))
> > +		kfree(inode->i_link);
> 
> is_inode_fast_symlink only shows up in a later patch.  And really
> obsfucates the check here in the only caller as you can just do an
> unconditional kfree here - i_link will be NULL except for the case
> where you explicitly set it.

I cannot fully understand your point (sorry about my English),
I will reply you about this later.

> 
> Also this code is nothing like ext4, so the code seems a little confusing.
> 
> > +static bool check_layout_compatibility(struct super_block *sb,
> > +				       struct erofs_super_block *layout)
> > +{
> > +	const unsigned int requirements = le32_to_cpu(layout->requirements);
> 
> Why is the variable name for the on-disk subperblock layout?  We usually
> still calls this something with sb in the name, e.g. dsb. for disk
> super block.

I can change it later, sbi and dsb (It has not good meaning in Chinese, although).

> 
> > +	EROFS_SB(sb)->requirements = requirements;
> > +
> > +	/* check if current kernel meets all mandatory requirements */
> > +	if (requirements & (~EROFS_ALL_REQUIREMENTS)) {
> > +		errln("unidentified requirements %x, please upgrade kernel version",
> > +		      requirements & ~EROFS_ALL_REQUIREMENTS);
> > +		return false;
> > +	}
> > +	return true;
> 
> Note that normally we call this features, but that doesn't really
> matter too much.
> 
> > +static int superblock_read(struct super_block *sb)
> > +{
> > +	struct erofs_sb_info *sbi;
> > +	struct buffer_head *bh;
> > +	struct erofs_super_block *layout;
> > +	unsigned int blkszbits;
> > +	int ret;
> > +
> > +	bh = sb_bread(sb, 0);
> 
> Is there any good reasons to use buffer heads like this in new code
> vs directly using bios?

This page can save in bdev page cache, it contains not only the erofs
superblock so it can be fetched in page cache later.

> 
> > +
> > +	sbi->blocks = le32_to_cpu(layout->blocks);
> > +	sbi->meta_blkaddr = le32_to_cpu(layout->meta_blkaddr);
> > +	sbi->islotbits = ffs(sizeof(struct erofs_inode_v1)) - 1;
> > +	sbi->root_nid = le16_to_cpu(layout->root_nid);
> > +	sbi->inos = le64_to_cpu(layout->inos);
> > +
> > +	sbi->build_time = le64_to_cpu(layout->build_time);
> > +	sbi->build_time_nsec = le32_to_cpu(layout->build_time_nsec);
> > +
> > +	memcpy(&sb->s_uuid, layout->uuid, sizeof(layout->uuid));
> > +	memcpy(sbi->volume_name, layout->volume_name,
> > +	       sizeof(layout->volume_name));
> 
> s_uuid should preferably be a uuid_t (assuming it is a real BE uuid,
> if it is le it should be a guid_t).

I just copied it from f2fs, I have no idea which one is best and
which fs I could refer to.

> 
> > +/* set up default EROFS parameters */
> > +static void default_options(struct erofs_sb_info *sbi)
> > +{
> > +}
> 
> No need to add an empty function.

Later patch will fill this function.

> 
> > +static int erofs_fill_super(struct super_block *sb, void *data, int silent)
> > +{
> > +	struct inode *inode;
> > +	struct erofs_sb_info *sbi;
> > +	int err;
> > +
> > +	infoln("fill_super, device -> %s", sb->s_id);
> > +	infoln("options -> %s", (char *)data);
> 
> That is some very verbose debug info.  We usually don't add that and
> let people trace the function instead.  Also you should probably
> implement the new mount API.
> new mount API.

Al think it is not urgent as well,
https://lore.kernel.org/driverdev-devel/20190721040547.GF17978@ZenIV.linux.org.uk/

 Al said,
 >> I agree with you, it seems better to just use s_id in community and
 >> delete erofs_mount_private stuffs...
 >> Yet I don't look into how to use new fs_context, could I keep using
 >> legacy mount interface and fix them all?
 >
 > Sure.

> 
> > +static void erofs_kill_sb(struct super_block *sb)
> > +{
> > +	struct erofs_sb_info *sbi;
> > +
> > +	WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);
> > +	infoln("unmounting for %s", sb->s_id);
> > +
> > +	kill_block_super(sb);
> > +
> > +	sbi = EROFS_SB(sb);
> > +	if (!sbi)
> > +		return;
> > +	kfree(sbi);
> > +	sb->s_fs_info = NULL;
> > +}
> 
> Why is this needed?  You can just free your sb privatte information in
> ->put_super and wire up kill_block_super as the ->kill_sb method
> directly.

See Al's comments,
https://lore.kernel.org/r/20190720224955.GD17978@ZenIV.linux.org.uk/

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
